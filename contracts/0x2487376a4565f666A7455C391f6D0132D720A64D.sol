contract main {




// =====================  Runtime code  =====================


const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


uint32 stor0;
address rewardPoolAddress;
uint256 stor0;
uint256 timestamp;

function rewardPool() payable {
    return address(rewardPoolAddress)
}

function timestamp() payable {
    return timestamp
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
    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor0):
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
    require ext_code.size(address(rewardPoolAddress))
    call address(rewardPoolAddress).0x3c6b16ab with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
