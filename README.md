# ZEON Network Dashboard Backend
This is backend module of ZEON Network dashboard.

It was implemented to provide following functionality:
1. ICO investors sign up.
1. Generation of Ethereum address upon user activation.
1. KYC verification using Jumio Netverify service (https://www.jumio.com/trusted-identity/netverify) and Sufti Pro service (https://shuftipro.com).
1. Token purchase.
1. Displaying Investor's transaction history.
1. All important actions are protected with 2FA (email or google authenticator) by integration with ZEON Network Backend Verify service (https://github.com/ZeonNetwork/backend-verify)

## Technology stack

1. Typescript, Express, InversifyJS (DI), TypeORM (MongoDB interaction).
1. Web3JS - interaction with Ethereum client. Backend supports any JSON-RPC compliant client.
1. Mocha/chai - unit/functional tests.
1. Docker.
