#!/usr/bin/env bash

# Global Variables
VALUE=1

# Example of a if statement
function if_statement() {
  if [ "${VALUE}" == 1 ]; then
    echo true
  fi
}

if_statement

# Example of a if else statement
function if_else_statement() {
  if [ "${VALUE}" == 1 ]; then
    echo true
  else
    echo false
  fi
}

if_else_statement

# Example of a if else if statement
function if_elif_statement() {
  if [ "${VALUE}" == 1 ]; then
    echo true
  elif [ "${VALUE}" == 2 ]; then
    echo false
  fi
}

if_elif_statement

# Example of a if elif else statement
function if_elif_else_statement() {
  if [ "${VALUE}" == 1 ]; then
    echo true
  elif [ "${VALUE}" == 2 ]; then
    echo false
  else
    echo unknown
  fi
}

if_elif_else_statement
