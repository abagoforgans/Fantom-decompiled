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
    if block.timestamp <= timestamp + (24 * 3600):
        revert with 0, 'Invalid time'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), 0x9ad880ea235625fab85be568, 0, ext_call.return_data[0 len 28]
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0xe2520a97 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), 0x9ad880ea235625fab85be568, 0, ext_call.return_data[0]
        if not transfer(address rg1, uint256 rg2), 0x9ad880ea235625fab85be568:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(0x9ad880ea235625fab85be568e969e1f2e2520a97)
    call 0x9ad880ea235625fab85be568e969e1f2e2520a97.0x3c6b16ab with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
