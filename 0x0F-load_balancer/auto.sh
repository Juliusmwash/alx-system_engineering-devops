#!/bin/bash
touch t ; echo "#!/usr/bin/env bash" > t ; echo "# comment" >> t ; chmod +x t ; mv t $1
