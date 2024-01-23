This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.tsx`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.

Summary

- Created a next-js project initialising TS, Eslint.

- Created a Github repository and did an intial commit.

- Installed prettier as a dev-dependency and created two config files .prettierrc( contains prettier config)
  and .prettierignore(folders that prettier will ignore).

- Added a script in the package.json, "format": "prettier --write ."

- Installed eslint-config-prettier so that eslint focuses on quality of the code and the formatting is done by prettier.
- And then added below code in the .eslintrc.json so eslint and prettier works together:
  {
  "extends": ["next/core-web-vitals", "prettier"]
  }

- Installed husky and lint-staged as a dev dependency.

- Added script, "prepare": "husky install" in the package.json file.

- .husky folder is created.

- Added below code in the package.json file.

  "lint-staged": {
  "_.{js,jsx,ts,tsx}": "eslint --cache --fix",
  "_.{js,css,md}": "prettier --write"

  }

- Setting up Github Actions,
  inside, .github/workflows, created a file lint_format.yml and added,

            name: Lint and Format

            on:
            push:
                branches:
                - main

            jobs:
            lint_and_format:
                runs-on: ubuntu-latest

                steps:
                - name: Checkout code
                    uses: actions/checkout@v2

                - name: Setup Node.js
                    uses: actions/setup-node@v3
                    with:
                    node-version: 20

                - name: Install dependencies
                    run: npm install

                - name: Lint and format
                    run: npm run lint && npm run format
