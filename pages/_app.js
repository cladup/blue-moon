// pages/_app.js
// (from: https://github.com/zeit/next.js/blob/master/errors/no-document-title.md)
//  to change title of the page
//      - <title>...</title>
import App, {Container} from 'next/app'
import Head from 'next/head'
import React from 'react'

class MyApp extends App {
  static async getInitialProps ({ Component, router, ctx }) {
    let pageProps = {}

    if (Component.getInitialProps) {
      pageProps = await Component.getInitialProps(ctx)
    }

    return {pageProps}
  }

  render () {
    const {Component, pageProps} = this.props
    return (
    <Container>
      <Head>
        <title>Clad Up</title>
        {
          <script src="https://aframe.io/releases/0.9.0/aframe.min.js" />
        }
      </Head>
      <Component {...pageProps} />
    </Container>
    )
  }
}

export default MyApp;