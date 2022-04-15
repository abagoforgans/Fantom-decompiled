contract main {




// =====================  Runtime code  =====================


const rewardPool = 0x9ad880ea235625fab85be568e969e1f2e2520a97

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


uint256 timestamp;

function timestamp() payable {
    return timestamp
}

function sub_603277c5(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function notify() payable {
    if block.timestamp < timestamp + (24 * 3600):
        revert with 0, 'Invalid time'
    timestamp = block.timestamp
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
        mem[324 len 0] = 0
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, 0x9ad880ea235625fab85be568e969e1f2e2520a97, ext_call.return_data[0 len 28]
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xe2520a97 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, 0x9ad880ea235625fab85be568e969e1f2e2520a97, ext_call.return_data[0 len 28]
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xe2520a97 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        require ext_code.size(0x9ad880ea235625fab85be568e969e1f2e2520a97)
        call 0x9ad880ea235625fab85be568e969e1f2e2520a97.0x3c6b16ab with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    else:
        if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 5 * ext_call.return_data[0] / 1000) >> 32
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 5 * ext_call.return_data[0] / 1000) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), msg.sender, 5 * ext_call.return_data[0] / 1000
            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if 5 * ext_call.return_data[0] / 1000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = transfer(address rg1, uint256 rg2), 0x9ad880ea235625fab85be568, 0, Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 1000)) >> 32
            mem[488 len 0] = 0
            call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xe2520a97 with:
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 1000)) << 224, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transfer(address rg1, uint256 rg2), msg.sender, 5 * ext_call.return_data[0] / 1000
                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(0x9ad880ea235625fab85be568e969e1f2e2520a97)
            call 0x9ad880ea235625fab85be568e969e1f2e2520a97.0x3c6b16ab with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if 5 * ext_call.return_data[0] / 1000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = transfer(address rg1, uint256 rg2), 0x9ad880ea235625fab85be568, 0, Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 1000)) >> 32
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xe2520a97 with:
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 1000)) << 224, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), msg.sender, 5 * ext_call.return_data[0] / 1000
                    if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(0x9ad880ea235625fab85be568e969e1f2e2520a97)
                    call 0x9ad880ea235625fab85be568e969e1f2e2520a97.0x3c6b16ab with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0x9ad880ea235625fab85be568e969e1f2e2520a97)
                    call 0x9ad880ea235625fab85be568e969e1f2e2520a97.0x3c6b16ab with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                if 5 * ext_call.return_data[0] / 1000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = transfer(address rg1, uint256 rg2), 0x9ad880ea235625fab85be568, 0, Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 1000)) >> 32
                mem[ceil32(return_data.size) + 489 len 0] = 0
                call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xe2520a97 with:
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 1000)) << 224, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), msg.sender, 5 * ext_call.return_data[0] / 1000
                    if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                require ext_code.size(0x9ad880ea235625fab85be568e969e1f2e2520a97)
                call 0x9ad880ea235625fab85be568e969e1f2e2520a97.0x3c6b16ab with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
