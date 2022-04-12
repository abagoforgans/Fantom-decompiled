contract main {




// =====================  Runtime code  =====================


#
#  - sub_644324d8(?)
#
const rewardToWethPool = ext_call.return_data[12 len 20]

const sellableRewardAmount = -1

const defaultToken = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c

const poolCount = ext_call.return_data[0]

const rewardToken = 0x5cc61a78f164885776aa610fb0fe1257df78e59b


function _fallback() payable {
    revert
}

function sub_acfb4272(?) payable {
    require calldata.size - 4 >= 96
    revert with 0, 'not implemented'
}

function poolAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093
}

function sub_1b3fa4e1(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    revert with 0, 'not implemented'
}

function sub_2bf93b47(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    revert with 0, 'not implemented'
}

function claimReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    call 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    call 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lockableToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    staticcall 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.poolInfo(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[12 len 20]
}

function lockedAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    staticcall 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.stakedWantTokens(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        args 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9083ea3756bde6ee6f27a6e996806fbd37f6f093)
    call 0x9083ea3756bde6ee6f27a6e996806fbd37f6f093.deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a4ed037a(?) payable {
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 100
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * arg3.length) + 324 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg5) >> 32
    mem[(32 * arg3.length) + 448 len 4] = 0
    mem[(32 * arg3.length) + 420 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg5) << 480, mem[(32 * arg3.length) + 420 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg3.length:
                revert with memory
                  from 128
                   len arg3.length
            revert with 0, 'SafeERC20: low-level call failed'
        if arg3.length:
            require arg3.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg3.length) + 434 len 14],
                            0,
                            mem[(32 * arg3.length) + 452 len 4]
        mem[(32 * arg3.length) + 584 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(this.address)
        call this.address.0x644324d8 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 584 len (32 * arg3.length) - floor32(arg3.length)]), arg4, arg5, arg6, address(arg7)
    else:
        mem[(32 * arg3.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * arg3.length) + 356]:
                revert with 0, 
                            32,
                            42,
                            0x835361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg3.length) + ceil32(return_data.size) + 435 len 22]
        mem[(32 * arg3.length) + ceil32(return_data.size) + 585 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        require ext_code.size(this.address)
        call this.address.0x644324d8 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + ceil32(return_data.size) + floor32(arg3.length) + 585 len (32 * arg3.length) - floor32(arg3.length)]), arg4, arg5, arg6, address(arg7)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
