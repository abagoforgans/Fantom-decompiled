contract main {




// =====================  Runtime code  =====================


#
#  - sub_0807bccb(?)
#
const rewardToWethPool = ext_call.return_data[12 len 20]

const sellableRewardAmount = -1

const defaultToken = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const rewardTokenCount = 1

const poolCount = ext_call.return_data[0]


function _fallback() payable {
    revert
}

function sub_acfb4272(?) payable {
    require calldata.size - 4 >= 96
    revert with 0, 'not implemented'
}

function rewardToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0x575f8738efda7f512e3654f277c77e80c7d2725
}

function poolAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20
}

function sub_dd6e675a(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    revert with 0, 'not implemented'
}

function sub_e1a2ba10(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    revert with 0, 'not implemented'
}

function claimReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.0xe2bbb158 with:
         gas gas_remaining wei
        args arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.0x441a3e70 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lockableToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[12 len 20]
}

function lockedAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    staticcall 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.0x93f1a40b with:
            gas gas_remaining wei
           args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function deposit(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x79b846fd with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20)
    call 0x90df158ff7c31ad1d81dddb1d8ab9d0ecbceda20.0xe2bbb158 with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f2f339be(?) payable {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 100
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * arg2.length) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
    mem[(32 * arg2.length) + 448 len 4] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[(32 * arg2.length) + 420 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg2.length:
                revert with memory
                  from 128
                   len arg2.length
            revert with 0, 'SafeERC20: low-level call failed'
        if arg2.length:
            require arg2.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg2.length) + 434 len 14],
                            0,
                            mem[(32 * arg2.length) + 452 len 4]
        mem[(32 * arg2.length) + 552 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(this.address)
        call this.address.0x807bccb with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 552 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4, arg5, address(arg6)
    else:
        mem[(32 * arg2.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * arg2.length) + 356]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg2.length) + ceil32(return_data.size) + 435 len 22]
        mem[(32 * arg2.length) + ceil32(return_data.size) + 553 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        require ext_code.size(this.address)
        call this.address.0x807bccb with:
             gas gas_remaining wei
            args address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 553 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4, arg5, address(arg6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
