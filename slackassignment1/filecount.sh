#!/bin/bash
file_count()
{
 echo -n "$(ls)" | wc -l
}
file_count $1

