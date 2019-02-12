// pages/_document.js
// (from: http://webframeworks.kr/tutorials/nextjs/nextjs-007/)
//  to use bootstrap with Next.js
//      - <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" ... />
import Document, { Head, Main, NextScript } from 'next/document';

class CustomDocument extends Document {
    render() {
        return (
            <html>
                <Head>
                    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossOrigin="anonymous" />
                </Head>
                <body>
                    <Main/>
                    <NextScript/>
                </body>
            </html>
        );
    }
}

export default CustomDocument;