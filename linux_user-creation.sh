#!/bin/bash

echo "Enter username:"
read USERNAME

sudo useradd "$USERNAME"

echo "User $USERNAME created successfully."
