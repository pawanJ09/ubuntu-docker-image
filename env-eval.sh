#!/bin/bash

eval "echo \"$(cat aws.env)\"" > .final-aws.env