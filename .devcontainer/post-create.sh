#!/usr/bin/env bash
# Runs once after the Codespace container is created. Failures are non-fatal.

claude plugin marketplace add anthropics/claude-plugins-official \
  && claude plugin install postman@claude-plugins-official \
  || echo "Postman plugin install failed; run: claude plugin install postman@claude-plugins-official"

if [ -n "${POSTMAN_API_KEY:-}" ]; then
  postman login --with-api-key "$POSTMAN_API_KEY" \
    || echo "Postman login failed; check the POSTMAN_API_KEY secret"
else
  echo "POSTMAN_API_KEY not set; add it as a Codespaces secret, then run: postman login --with-api-key \$POSTMAN_API_KEY"
fi
