contract main {




// =====================  Runtime code  =====================


#
#  - doApprove(address arg1, address arg2)
#
address owner;
address sub_5b0281aaAddress;
address sub_4e2dadf5Address;
address sub_c63612d5Address;
uint32 stor4;
address lpAddress;

function lp() {
    return address(lpAddress)
}

function sub_4e2dadf5(?) {
    return sub_4e2dadf5Address
}

function sub_5b0281aa(?) {
    return sub_5b0281aaAddress
}

function owner() {
    return owner
}

function sub_c63612d5(?) {
    return sub_c63612d5Address
}

function _fallback() payable {
    revert
}

function emergencyWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5b0281aaAddress)
    call sub_5b0281aaAddress.0x5312ea8e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeTokensForEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_c63612d5Address)
    staticcall sub_c63612d5Address.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_c63612d5Address)
    call sub_c63612d5Address.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args sub_4e2dadf5Address, address(ext_call.return_data[0]), arg1, 0, 0, address(this.address), block.timestamp + 1800
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5b0281aaAddress)
    staticcall sub_5b0281aaAddress.startBlockHarvest() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number < ext_call.return_data[0]:
        revert with 0, 'not start run away'
    require ext_code.size(sub_5b0281aaAddress)
    staticcall sub_5b0281aaAddress.getPoolIdForLpToken(address arg1) with:
            gas gas_remaining wei
           args address(lpAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_5b0281aaAddress)
    staticcall sub_5b0281aaAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool((4 * ceil32(return_data.size)) + 288 <= test266151307())
    require ext_code.size(sub_5b0281aaAddress)
    call sub_5b0281aaAddress.0x441a3e70 with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = address(lpAddress)
    require ext_code.size(sub_5b0281aaAddress)
    staticcall sub_5b0281aaAddress.getPoolIdForLpToken(address arg1) with:
            gas gas_remaining wei
           args address(lpAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(lpAddress)):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(address(lpAddress)):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 228 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, mem[ceil32(return_data.size) + 228 len 28]
    call address(lpAddress).mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(stor4), mem[132 len 28] == bool(uint32(stor4), mem[132 len 28])
            if not uint32(stor4), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(sub_5b0281aaAddress)
    call sub_5b0281aaAddress.0xe2bbb158 with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw_token(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb == arg1:
        if eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 196 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
            call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function deposit_all() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = msg.sender
    require ext_code.size(address(lpAddress))
    staticcall address(lpAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(return_data.size) + 100] = address(lpAddress)
    require ext_code.size(sub_5b0281aaAddress)
    staticcall sub_5b0281aaAddress.getPoolIdForLpToken(address arg1) with:
            gas gas_remaining wei
           args address(lpAddress)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(lpAddress)):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(address(lpAddress)):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 228 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 228 len 28]
    call address(lpAddress).mem[(2 * ceil32(return_data.size)) + 228 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 260] == bool(mem[(2 * ceil32(return_data.size)) + 260])
            if not mem[(2 * ceil32(return_data.size)) + 260]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(sub_5b0281aaAddress)
    call sub_5b0281aaAddress.0xe2bbb158 with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function exit() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_5b0281aaAddress)
    staticcall sub_5b0281aaAddress.startBlockHarvest() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number < ext_call.return_data[0]:
        revert with 0, 'not start run away'
    require ext_code.size(sub_5b0281aaAddress)
    staticcall sub_5b0281aaAddress.getPoolIdForLpToken(address arg1) with:
            gas gas_remaining wei
           args address(lpAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_5b0281aaAddress)
    staticcall sub_5b0281aaAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool((4 * ceil32(return_data.size)) + 288 <= test266151307())
    mem[(4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    require ext_code.size(sub_5b0281aaAddress)
    call sub_5b0281aaAddress.0x441a3e70 with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    require ext_code.size(address(lpAddress))
    staticcall address(lpAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_c63612d5Address)
    staticcall sub_c63612d5Address.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 324] = address(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 388] = 0
    mem[(7 * ceil32(return_data.size)) + 420] = 0
    mem[(7 * ceil32(return_data.size)) + 452] = this.address
    mem[(7 * ceil32(return_data.size)) + 484] = block.timestamp + 1800
    require ext_code.size(sub_c63612d5Address)
    call sub_c63612d5Address.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args sub_4e2dadf5Address, address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 1800
    mem[(7 * ceil32(return_data.size)) + 288 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(8 * ceil32(return_data.size)) + 292] = this.address
    require ext_code.size(sub_4e2dadf5Address)
    staticcall sub_4e2dadf5Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(10 * ceil32(return_data.size)) + 320] = sub_4e2dadf5Address
    require ext_code.size(sub_c63612d5Address)
    staticcall sub_c63612d5Address.WETH() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(10 * ceil32(return_data.size)) + 352] = ext_call.return_data[12 len 20]
    mem[(11 * ceil32(return_data.size)) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(11 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
    idx = 0
    s = (11 * ceil32(return_data.size)) + 580
    t = (10 * ceil32(return_data.size)) + 320
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_c63612d5Address)
    call sub_c63612d5Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 2, mem[(11 * ceil32(return_data.size)) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
