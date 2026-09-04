const http = require('http');

describe('CartForge Application', () => {
    let server;

    beforeAll((done) => {
        server = http.createServer((req, res) => {
            res.writeHead(200, { 'Content-Type': 'text/plain' });
            res.end('CartForge is running!\n');
        });

        server.listen(0, done);
    });

    afterAll((done) => {
        server.close(done);
    });

    test('should return CartForge is running', (done) => {
        const port = server.address().port;

        http.get(`http://localhost:${port}`, (res) => {
            let data = '';

            res.on('data', chunk => {
                data += chunk;
            });

            res.on('end', () => {
                expect(res.statusCode).toBe(200);
                expect(data).toBe('CartForge is running!\n');
                done();
            });
        });
    });
});
