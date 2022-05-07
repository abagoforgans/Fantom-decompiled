contract main {




// =====================  Runtime code  =====================


address owner;
address masterChefAddress;
address rewardTokenAddress;
array of uint256 sub_12f46eae;
address routerAddress;

function sub_12f46eae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_12f46eae.length
    return sub_12f46eae[arg1]
}

function masterChef() payable {
    return masterChefAddress
}

function owner() payable {
    return owner
}

function rewardToken() payable {
    return rewardTokenAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function enterFarm(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(masterChefAddress)
    call masterChefAddress.poolInfo(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args masterChefAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(masterChefAddress)
        call masterChefAddress.deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0], owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_12f46eae.length++
        sub_12f46eae[sub_12f46eae.length] = arg1
}

function exit() payable {
    mem[64] = 96
    require msg.sender == owner
    idx = 0
    while idx < sub_12f46eae.length:
        mem[0] = 3
        require ext_code.size(masterChefAddress)
        call masterChefAddress.userInfo(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args sub_12f46eae[idx], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(masterChefAddress)
        call masterChefAddress.poolInfo(uint256 arg1) with:
             gas gas_remaining wei
            args sub_12f46eae[idx]
        mem[96 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(masterChefAddress)
        call masterChefAddress.withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_12f46eae[idx], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = owner
        mem[132] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = routerAddress
    mem[132] = ext_call.return_data[0]
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xa9e7572300000000000000000000000000000000000000000000000000000000
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.mem[var32003 len 4] with:
            gas gas_remaining wei
           args mem[var32003 + 4 len var32004 - 4]
    mem[var32005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var36004 <= mem[var36002]:
        require ext_code.size(routerAddress)
        staticcall routerAddress.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[388 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args var36004, 0, 160, owner, block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    mem[var42002 + 32] = rewardTokenAddress
    mem[192] = 0xad5c464800000000000000000000000000000000000000000000000000000000
    require ext_code.size(routerAddress)
    staticcall routerAddress.mem[var44003 len 4] with:
            gas gas_remaining wei
           args mem[var44003 + 4 len var44004 - 4]
    mem[var44005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < mem[var48003]
    mem[var50002 + 64] = address(var50003)
    mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[196] = var50005
    mem[228] = 0
    mem[292] = owner
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = mem[var50004]
    if var37001 < 32 * mem[var50004]:
        mem[var37001 + 388] = mem[var37001 + var50004 + 32]
        var37001 = var37001 + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args var50005, 0, 160, owner, block.timestamp, mem[356 len (32 * mem[var50004]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if var58002 <= 0:
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.maxTransferAmount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var58002 <= ext_call.return_data[0]:
        require ext_code.size(routerAddress)
        staticcall routerAddress.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[484 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args var58002, 0, 160, owner, block.timestamp, 2, mem[484 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[192] = 2
    mem[64] = 288
    mem[224] = rewardTokenAddress
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256] = ext_call.return_data[12 len 20]
    mem[288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[292] = ext_call.return_data[0]
    mem[324] = 0
    mem[388] = owner
    mem[420] = block.timestamp
    mem[356] = 160
    mem[452] = 2
    var37001 = 0
    continue 
}



}
