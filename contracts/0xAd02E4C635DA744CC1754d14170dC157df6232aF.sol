contract main {




// =====================  Runtime code  =====================


#
#  - sweep(address arg1, uint256 arg2)
#
const name = 'BridgeVaultProxy', 0


uint32 stor0;
address vaultAddress;
uint256 stor0;
address wantAddress;
address strategistAddress;
address keeperAddress;
address governanceAddress;
address pendingGovernanceAddress;
uint256 maxLoss;

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function maxLoss() payable {
    return maxLoss
}

function governance() payable {
    return governanceAddress
}

function keeper() payable {
    return keeperAddress
}

function pendingGovernance() payable {
    return pendingGovernanceAddress
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function acceptGovernor() payable {
    require msg.sender == pendingGovernanceAddress
    governanceAddress = pendingGovernanceAddress
    pendingGovernanceAddress = 0
}

function setPendingGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governanceAddress
    pendingGovernanceAddress = arg1
}

function setMaxLoss(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if keeperAddress != msg.sender:
            require msg.sender == governanceAddress
    maxLoss = arg1
}

function deposit() payable {
    if strategistAddress != msg.sender:
        if keeperAddress != msg.sender:
            require msg.sender == governanceAddress
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_9419a478(?) payable {
    if strategistAddress != msg.sender:
        if keeperAddress != msg.sender:
            require msg.sender == governanceAddress
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).withdraw(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0], address(this.address), maxLoss
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.Swapout(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function totalAssets() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).pricePerShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not 10^ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if ext_call.return_data[0] + (0 / 10^ext_call.return_data[0]) < 0 / 10^ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] + (0 / 10^ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[0]))
}

function sub_aa63777b(?) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        if keeperAddress != msg.sender:
            require msg.sender == governanceAddress
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).pricePerShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1 - ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(address(vaultAddress))
            call address(vaultAddress).withdraw(uint256 arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 0 / ext_call.return_data[0], address(this.address), maxLoss
        else:
            if (arg1 * 10^ext_call.return_data[0]) - (ext_call.return_data[0] * 10^ext_call.return_data[0]) / arg1 - ext_call.return_data[0] != 10^ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(address(vaultAddress))
            call address(vaultAddress).withdraw(uint256 arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args (arg1 * 10^ext_call.return_data[0]) - (ext_call.return_data[0] * 10^ext_call.return_data[0]) / ext_call.return_data[0], address(this.address), maxLoss
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    if ext_call.return_data[0] < arg1:
        call wantAddress.Swapout(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], this.address
    else:
        call wantAddress.Swapout(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a0246fbb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == governanceAddress
    mem[100] = this.address
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = address(vaultAddress)
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0
        mem[ceil32(return_data.size) + 328] = 0
        call wantAddress with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            address(vaultAddress) = address(arg1)
            mem[ceil32(return_data.size) + 264] = this.address
            mem[ceil32(return_data.size) + 296] = address(arg1)
            require ext_code.size(wantAddress)
            staticcall wantAddress.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(arg1)
            mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[(2 * ceil32(return_data.size)) + 296] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 328] = -1
            mem[(2 * ceil32(return_data.size)) + 260] = 68
            mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
            mem[(2 * ceil32(return_data.size)) + 360] = 32
            mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), -1, 0
            mem[(2 * ceil32(return_data.size)) + 492] = 0
            call wantAddress with:
               funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                    if not mem[(2 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(vaultAddress))
            call address(vaultAddress).0xd0e30db0 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        address(vaultAddress) = address(arg1)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(arg1)
        require ext_code.size(wantAddress)
        staticcall wantAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(arg1)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), -1, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(vaultAddress))
            call address(vaultAddress).0xd0e30db0 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 430] = 32
            mem[(4 * ceil32(return_data.size)) + 462] = 32
            mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 426
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            require ext_code.size(address(vaultAddress))
            call address(vaultAddress).0xd0e30db0 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
            require ext_code.size(address(vaultAddress))
            call address(vaultAddress).0xd0e30db0 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 42
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
        mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = maxLoss
    require ext_code.size(address(vaultAddress))
    call address(vaultAddress).withdraw(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], address(this.address), maxLoss
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = address(vaultAddress)
    mem[(2 * ceil32(return_data.size)) + 164] = 0
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call wantAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        address(vaultAddress) = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 264] = this.address
        mem[(2 * ceil32(return_data.size)) + 296] = address(arg1)
        require ext_code.size(wantAddress)
        staticcall wantAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(arg1)
        mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(4 * ceil32(return_data.size)) + 296] = address(arg1)
        mem[(4 * ceil32(return_data.size)) + 328] = -1
        mem[(4 * ceil32(return_data.size)) + 260] = 68
        mem[(4 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 360] = 32
        mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), -1, 0
        mem[(4 * ceil32(return_data.size)) + 492] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                if not mem[(4 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
        if not mem[(2 * ceil32(return_data.size)) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    address(vaultAddress) = address(arg1)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
    require ext_code.size(wantAddress)
    staticcall wantAddress.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(arg1)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), -1, 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call wantAddress with:
       funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 430] = 32
        mem[(8 * ceil32(return_data.size)) + 462] = 32
        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 426
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 430] = 32
    mem[(8 * ceil32(return_data.size)) + 462] = 42
    mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(8 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (8 * ceil32(return_data.size)) + 426
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
