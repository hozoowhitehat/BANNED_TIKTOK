#!/bin/bash

# Variables
RECIPIENT="support@tiktok.com"  # Replace with the actual support email if available
SUBJECT="Reporting a TikTok User"
BODY="Dear TikTok Support,

I am writing to report a TikTok user who is violating the community guidelines. The user's handle is @galirus.official and their content can be found at the following link:https://vt.tiktok.com/ZSMpYQDX3/ .

Thank you for your attention to this matter.

Best regards,
[HOZOO]"

# Prompt for email and password
read -p "Email anda: " EMAIL
read -sp "Password email anda: " PASSWORD
echo

# Send the email using curl
curl -s --url 'smtp://smtp.gmail.com:587' --ssl-reqd \
  --mail-from "$EMAIL" \
  --mail-rcpt "$RECIPIENT" \
  --upload-file <(echo -e "Subject: $SUBJECT\n\n$BODY") \
  --user "$EMAIL:$PASSWORD" \
  --insecure

echo "Email sent to $RECIPIENT"
