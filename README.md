# Rama Shoppers

Mobile-phone store with customer ordering, role-protected administration, inventory and order management. Built with Node.js, Express, MongoDB and EJS; deployed on Render.

## Security first

- **No administrator email or password is published or supported as a default.**
- Provision the first administrator through the deployment-controlled setup process.
- Store administrator credentials only in the password manager or secure deployment configuration.
- Never commit database URLs, JWT secrets, email passwords, Flutterwave keys, customer exports or .env files.
- Keep deployment packages in a private release store, never in this public repository.

## Local development

1. Install dependencies with `npm install`.
2. Create a local `.env` file and obtain real values only from the deployment secret manager:

```env
PORT=3001
NODE_ENV=development
MONGODB_URI=<your-mongodb-connection-string>
JWT_SECRET=<generate-a-unique-32-plus-character-secret>
EMAIL_USER=<your-business-email>
EMAIL_PASS=<your-email-app-password>
FLUTTERWAVE_PUBLIC_KEY=<your-flutterwave-public-key>
FLUTTERWAVE_SECRET_KEY=<your-flutterwave-secret-key>
BASE_URL=http://localhost:3001
```

3. Start with `npm start`.

## Render deployment

Keep runtime values in Render Environment settings, not the repository, README or release packages. Keep payment mode disabled until sandbox checkout, webhook, order update and invoice checks pass. Use separate test and live Flutterwave keys.

## Access checklist

- [ ] Least-privilege database user
- [ ] Unique JWT secret per environment
- [ ] Email app password, not account password
- [ ] No public secrets, credentials or customer exports
- [ ] Strong unique admin passwords
- [ ] Private deployment packages

## Stack

Node.js, Express, MongoDB/Mongoose, JWT, EJS, Flutterwave, Nodemailer and Render.

Rama Shoppers · Kampala, Uganda
