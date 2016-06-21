#!/usr/bin/env python3
# Conky helper
# Convert unit from bytes to 10^3-based

import sys

SUFFIXES = ['KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB']


def approximate_size(size):

    if size < 0:
        raise ValueError('N/A')  # Negative number

    for suffix in SUFFIXES:
        size /= 1000

        if size < 1000:
            return '{0:.1f} {1}'.format(size, suffix)

    raise ValueError('N/A')  # Number too large


if __name__ == '__main__':
    for arg in sys.argv[1:]:
        print(approximate_size(float(arg)))
