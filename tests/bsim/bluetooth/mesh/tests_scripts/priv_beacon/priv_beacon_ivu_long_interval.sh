#!/usr/bin/env bash
# Copyright 2023 Nordic Semiconductor ASA
# SPDX-License-Identifier: Apache-2.0

source $(dirname "${BASH_SOURCE[0]}")/../../_mesh_test.sh

# Test Private Beacon advertising during IV Update procedure, with long Random Interval set.
# Random value is expected to change before Random Interval is reached due to
# Flags field change.
RunTest mesh_priv_beacon_on_iv_update_long_interval \
  beacon_rx_on_iv_update \
  beacon_tx_priv_on_iv_update \
  -- -argstest rand-int=3
