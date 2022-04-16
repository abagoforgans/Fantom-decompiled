contract main {




// =====================  Runtime code  =====================


const decimals = 18

const DOMAIN_TYPEHASH = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const VERSION_HASH = 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6


array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint256 nonces;
uint256 totalDeposits;
address routerAddress;
address lPtokenAddress;
address stor9;
address stor10;
address rewardTokenAddress;
address sub_90350d00Address;
uint256 PID;
address owner;
mapping of uint8 stor15;

function name() payable {
    return name[0 len name.length].field_0
}

function members(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function PID() payable {
    return PID
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function totalDeposits() payable {
    return totalDeposits
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function owner() payable {
    return owner
}

function sub_90350d00(?) payable {
    return sub_90350d00Address
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function LPtoken() payable {
    return lPtokenAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function addmember(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NakedApes: caller is not the owner'
    stor15[address(arg1)] = 1
}

function removemember(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NakedApes: caller is not the owner'
    stor15[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, '_approve::owner zero address'
    if not arg1:
        revert with 0, '_approve::spender zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_09d1b29f(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return arg1
    if totalDeposits * totalSupply / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalDeposits * totalSupply:
        return arg1
    if not totalDeposits:
        revert with 0, 'SafeMath: division by zero', 0
    if not arg1:
        return 0
    if totalSupply / totalDeposits * arg1 / arg1 != totalSupply / totalDeposits:
        revert with 0, 'SafeMath: multiplication overflow'
    return (totalSupply / totalDeposits * arg1)
}

function sub_9b25ce80(?) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 0
    if totalDeposits * totalSupply / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalDeposits * totalSupply:
        return 0
    if not arg1:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply)
    if totalDeposits * arg1 / arg1 != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (totalDeposits * arg1 / totalSupply)
}

function sub_a8899556(?) payable {
    require ext_code.size(sub_90350d00Address)
    staticcall sub_90350d00Address.pendingCake(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '_transferTokens: cannot transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    46,
                    0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[174 len 18] >> 112,
                    0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getDomainSeparator() payable {
    if not bool(name.length):
        mem[96] = Mask(248, 8, name.length)
        return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    if bool(name.length) != 1:
        return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len -96]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    idx = 0
    s = 0
    while idx < name.length.field_1:
        mem[idx + 96] = name[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if arg4 < block.timestamp:
        revert with 0, 'permit::expired'
    nonces[address(arg1)]++
    if not bool(name.length):
        mem[320] = Mask(248, 8, name.length)
        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[320 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    else:
        if bool(name.length) != 1:
            signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[320 len -320]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        else:
            idx = 0
            s = 0
            while idx < name.length.field_1:
                mem[idx + 320] = name[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[320 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Arch::validateSig: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'Arch::validateSig: invalid signature'
    if not arg1:
        revert with 0, '_approve::owner zero address'
    if not arg2:
        revert with 0, '_approve::spender zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '_transferTokens: cannot transfer to the zero address'
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        46,
                        0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[174 len 18] >> 112,
                        0
    else:
        if allowance[address(arg1)][msg.sender] == -1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            '_transferTokens: cannot transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            46,
                            0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[174 len 18] >> 112,
                            0
        else:
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 
                            32,
                            47,
                            0x797472616e7366657246726f6d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[175 len 17] >> 120,
                            0
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
            emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
            if not arg2:
                revert with 0, '_transferTokens: cannot transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            46,
                            0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[270 len 18] >> 112,
                            0
    ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 4))))
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_e95f0328(?) payable {
    require calldata.size - 4 >= 32
    if not stor15[msg.sender]:
        revert with 0, 'NakedApes: you are not a member'
    if totalDeposits < totalSupply:
        revert with 0, 'NakedApes: DEPOSIT failed'
    require ext_code.size(lPtokenAddress)
    call lPtokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NakedApes: transferFrom failed'
    if arg1 <= 0:
        revert with 0, 'amount too low'
    require ext_code.size(sub_90350d00Address)
    call sub_90350d00Address.0xe2bbb158 with:
         gas gas_remaining wei
        args PID, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not totalSupply:
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
    else:
        if totalDeposits * totalSupply / totalSupply != totalDeposits:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalDeposits * totalSupply:
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
        else:
            if not totalDeposits:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, 0, msg.sender);
            else:
                if totalSupply / totalDeposits * arg1 / arg1 != totalSupply / totalDeposits:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (totalSupply / totalDeposits * arg1) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply / totalDeposits * arg1
                if (totalSupply / totalDeposits * arg1) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += totalSupply / totalDeposits * arg1
                emit Transfer((totalSupply / totalDeposits * arg1), 0, msg.sender);
    if arg1 + totalDeposits < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits += arg1
    emit Deposit(msg.sender, arg1);
}

function WITHDRAW(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply:
        if totalDeposits * totalSupply / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalDeposits * totalSupply:
            if not arg1:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / totalSupply:
                    if 0 / totalSupply <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(sub_90350d00Address)
                    call sub_90350d00Address.0x441a3e70 with:
                         gas gas_remaining wei
                        args PID, 0 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(lPtokenAddress)
                    call lPtokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer failed'
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63, mem[ceil32(return_data.size) + 231 len 25] >> 56,
                                    0
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe5f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c, mem[ceil32(return_data.size) + 327 len 25] >> 56,
                                    0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if 0 / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    totalDeposits -= 0 / totalSupply
                    emit Withdraw(msg.sender, 0 / totalSupply);
            else:
                if totalDeposits * arg1 / arg1 != totalDeposits:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if totalDeposits * arg1 / totalSupply:
                    if totalDeposits * arg1 / totalSupply <= 0:
                        revert with 0, 'amount too low'
                    require ext_code.size(sub_90350d00Address)
                    call sub_90350d00Address.0x441a3e70 with:
                         gas gas_remaining wei
                        args PID, totalDeposits * arg1 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(lPtokenAddress)
                    call lPtokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, totalDeposits * arg1 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer failed'
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    39,
                                    0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63, mem[ceil32(return_data.size) + 231 len 25] >> 56,
                                    0
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 
                                    32,
                                    39,
                                    0xfe5f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c, mem[ceil32(return_data.size) + 327 len 25] >> 56,
                                    0
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    if totalDeposits * arg1 / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction underflow', 0
                    totalDeposits -= totalDeposits * arg1 / totalSupply
                    emit Withdraw(msg.sender, totalDeposits * arg1 / totalSupply);
}

function sub_1cb78ac3(?) payable {
    if tx.origin != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NakedApes: onlyEOA (only externally owned account)'
    mem[100] = PID
    mem[132] = this.address
    require ext_code.size(sub_90350d00Address)
    staticcall sub_90350d00Address.pendingCake(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args PID, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(sub_90350d00Address)
    call sub_90350d00Address.0xe2bbb158 with:
         gas gas_remaining wei
        args PID, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96] = 26
    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
    if uint255(ext_call.return_data[0]) <= 0:
        revert with 0, 'amount too low'
    mem[(2 * ceil32(return_data.size)) + 160] = 2
    mem[(2 * ceil32(return_data.size)) + 192] = rewardTokenAddress
    mem[(2 * ceil32(return_data.size)) + 224] = stor9
    if rewardTokenAddress == stor9:
        mem[(2 * ceil32(return_data.size)) + 256] = 2
        mem[(2 * ceil32(return_data.size)) + 288] = rewardTokenAddress
        mem[(2 * ceil32(return_data.size)) + 320] = stor10
        if rewardTokenAddress == stor10:
            mem[(2 * ceil32(return_data.size)) + 420] = uint255(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 452] = uint255(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 484] = 0
            mem[(2 * ceil32(return_data.size)) + 516] = 0
            mem[(2 * ceil32(return_data.size)) + 548] = this.address
            mem[(2 * ceil32(return_data.size)) + 580] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args stor9, stor10, 2 * ext_call.return_data[0], 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            mem[(2 * ceil32(return_data.size)) + 352 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[64] <= 0:
                mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 356] = 32
                mem[(4 * ceil32(return_data.size)) + 388] = 14
                mem[(4 * ceil32(return_data.size)) + 420] = 'amount too low' << 144
            else:
                mem[(4 * ceil32(return_data.size)) + 356] = PID
                mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[64]
                require ext_code.size(sub_90350d00Address)
                call sub_90350d00Address.0xe2bbb158 with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 356 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[64] + totalDeposits >= totalDeposits:
                    totalDeposits += ext_call.return_data[64]
                    mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[64] + totalDeposits
                    mem[(4 * ceil32(return_data.size)) + 384] = totalSupply
                    emit Reinvest(uint256 rg1, uint256 rg2):
                                  mem[(4 * ceil32(return_data.size)) + 352 len (5 * ceil32(return_data.size)) + 64],
                mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 356] = 32
                mem[(4 * ceil32(return_data.size)) + 388] = 27
                mem[(4 * ceil32(return_data.size)) + 420] = 'SafeMath: addition overflow'
            revert with memory
              from (4 * ceil32(return_data.size)) + 352
               len (5 * ceil32(return_data.size)) + 100
        mem[(2 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 356] = uint255(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 388] = 64
        mem[(2 * ceil32(return_data.size)) + 420] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 288
        t = (2 * ceil32(return_data.size)) + 452
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _184 = mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
        require mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 352 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 383
        _186 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 352]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 352] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 352]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 352]) + 384 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 352]) + 384
        mem[(4 * ceil32(return_data.size)) + 352] = _186
        require return_data.size >= _184 + (32 * _186) + 32
        mem[(4 * ceil32(return_data.size)) + 384 len 32 * _186] = mem[(2 * ceil32(return_data.size)) + _184 + 384 len 32 * _186]
        require _186 - 1 < _186
        _306 = mem[(32 * _186 - 1) + (4 * ceil32(return_data.size)) + 384]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = uint255(ext_call.return_data[0])
        mem[mem[64] + 36] = _306
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 288
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 2 * ext_call.return_data[0], _306, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _414 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _416 = mem[_414]
        require mem[_414] <= test266151307()
        require _414 + return_data.size > _414 + mem[_414] + 31
        _418 = mem[_414 + mem[_414]]
        require mem[_414 + mem[_414]] <= test266151307()
        require (32 * mem[_414 + mem[_414]]) + 32 >= 0 and _414 + ceil32(return_data.size) + (32 * mem[_414 + mem[_414]]) + 32 <= test266151307()
        mem[64] = _414 + ceil32(return_data.size) + (32 * mem[_414 + mem[_414]]) + 32
        mem[_414 + ceil32(return_data.size)] = _418
        require return_data.size >= _416 + (32 * _418) + 32
        mem[_414 + ceil32(return_data.size) + 32 len 32 * _418] = mem[_414 + _416 + 32 len 32 * _418]
        require 1 < mem[(2 * ceil32(return_data.size)) + 160]
        require 1 < mem[(2 * ceil32(return_data.size)) + 256]
        _517 = mem[(2 * ceil32(return_data.size)) + 320]
        mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 236 len 20]
        mem[mem[64] + 68] = uint255(ext_call.return_data[0])
        mem[mem[64] + 100] = _306
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(_517), 2 * ext_call.return_data[0], _306, 0, 0, address(this.address), block.timestamp
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _525 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        if mem[_525 + 64] <= 0:
            revert with 0, 'amount too low'
        require ext_code.size(sub_90350d00Address)
        call sub_90350d00Address.0xe2bbb158 with:
             gas gas_remaining wei
            args PID, mem[_525 + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_525 + 64] + totalDeposits < totalDeposits:
            revert with 0, 'SafeMath: addition overflow'
        totalDeposits += mem[_525 + 64]
        emit Reinvest(mem[_525 + 64] + totalDeposits, totalSupply);
    else:
        mem[(2 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 260] = uint255(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 292] = 64
        mem[(2 * ceil32(return_data.size)) + 324] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 192
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _185 = mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
        require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 256 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 287
        _187 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 256]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 256] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 256]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 256]) + 288 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 256]) + 288
        mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 256]
        require return_data.size >= _185 + (32 * _187) + 32
        mem[(4 * ceil32(return_data.size)) + 288 len 32 * _187] = mem[(2 * ceil32(return_data.size)) + _185 + 288 len 32 * _187]
        require _187 - 1 < _187
        _308 = mem[(32 * _187 - 1) + (4 * ceil32(return_data.size)) + 288]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = uint255(ext_call.return_data[0])
        mem[mem[64] + 36] = _308
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 192
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 2 * ext_call.return_data[0], _308, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _415 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _417 = mem[_415]
        require mem[_415] <= test266151307()
        require _415 + return_data.size > _415 + mem[_415] + 31
        _419 = mem[_415 + mem[_415]]
        require mem[_415 + mem[_415]] <= test266151307()
        require (32 * mem[_415 + mem[_415]]) + 32 >= 0 and _415 + ceil32(return_data.size) + (32 * mem[_415 + mem[_415]]) + 32 <= test266151307()
        mem[64] = _415 + ceil32(return_data.size) + (32 * mem[_415 + mem[_415]]) + 32
        mem[_415 + ceil32(return_data.size)] = _419
        require return_data.size >= _417 + (32 * _419) + 32
        mem[_415 + ceil32(return_data.size) + 32 len 32 * _419] = mem[_415 + _417 + 32 len 32 * _419]
        _511 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_511 + 32 len 64] = call.data[calldata.size len 64]
        require 0 < mem[(2 * ceil32(return_data.size)) + 160]
        require 0 < mem[_511]
        mem[_511 + 32] = mem[(2 * ceil32(return_data.size)) + 204 len 20]
        require 1 < mem[_511]
        mem[_511 + 64] = stor10
        require 1 < mem[_511]
        require 0 < mem[_511]
        if mem[_511 + 44 len 20] == stor10:
            require 1 < mem[(2 * ceil32(return_data.size)) + 160]
            require 1 < mem[_511]
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args address(mem[(2 * ceil32(return_data.size)) + 224]), stor10, _308, 2 * ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[64] <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(sub_90350d00Address)
            call sub_90350d00Address.0xe2bbb158 with:
                 gas gas_remaining wei
                args PID, ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[64] + totalDeposits < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits += ext_call.return_data[64]
            emit Reinvest(ext_call.return_data[64] + totalDeposits, totalSupply);
        else:
            mem[_511 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_511 + 100] = uint255(ext_call.return_data[0])
            mem[_511 + 132] = 64
            mem[_511 + 164] = mem[_511]
            idx = 0
            s = _511 + 32
            t = _511 + 196
            while idx < mem[_511]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            staticcall routerAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _511 + (32 * mem[_511]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _596 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _597 = mem[_596]
            require mem[_596] <= test266151307()
            require _596 + return_data.size > _596 + mem[_596] + 31
            _598 = mem[_596 + mem[_596]]
            require mem[_596 + mem[_596]] <= test266151307()
            require (32 * mem[_596 + mem[_596]]) + 32 >= 0 and _596 + ceil32(return_data.size) + (32 * mem[_596 + mem[_596]]) + 32 <= test266151307()
            mem[64] = _596 + ceil32(return_data.size) + (32 * mem[_596 + mem[_596]]) + 32
            mem[_596 + ceil32(return_data.size)] = _598
            require return_data.size >= _597 + (32 * _598) + 32
            mem[_596 + ceil32(return_data.size) + 32 len 32 * _598] = mem[_596 + _597 + 32 len 32 * _598]
            require _598 - 1 < _598
            _634 = mem[(32 * _598 - 1) + _596 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = uint255(ext_call.return_data[0])
            mem[mem[64] + 36] = _634
            mem[mem[64] + 68] = 160
            _636 = mem[_511]
            mem[mem[64] + 164] = mem[_511]
            idx = 0
            s = _511 + 32
            t = mem[64] + 196
            while idx < _636:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 2 * ext_call.return_data[0], _634, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _636) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _664 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _665 = mem[_664]
            require mem[_664] <= test266151307()
            require _664 + return_data.size > _664 + mem[_664] + 31
            _666 = mem[_664 + mem[_664]]
            require mem[_664 + mem[_664]] <= test266151307()
            require (32 * mem[_664 + mem[_664]]) + 32 >= 0 and _664 + ceil32(return_data.size) + (32 * mem[_664 + mem[_664]]) + 32 <= test266151307()
            mem[64] = _664 + ceil32(return_data.size) + (32 * mem[_664 + mem[_664]]) + 32
            mem[_664 + ceil32(return_data.size)] = _666
            require return_data.size >= _665 + (32 * _666) + 32
            mem[_664 + ceil32(return_data.size) + 32 len 32 * _666] = mem[_664 + _665 + 32 len 32 * _666]
            require 1 < mem[(2 * ceil32(return_data.size)) + 160]
            require 1 < mem[_511]
            _691 = mem[_511 + 64]
            mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 236 len 20]
            mem[mem[64] + 68] = _308
            mem[mem[64] + 100] = _634
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_691), _308, _634, 0, 0, address(this.address), block.timestamp
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _694 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            if mem[_694 + 64] <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(sub_90350d00Address)
            call sub_90350d00Address.0xe2bbb158 with:
                 gas gas_remaining wei
                args PID, mem[_694 + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_694 + 64] + totalDeposits < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits += mem[_694 + 64]
            emit Reinvest(mem[_694 + 64] + totalDeposits, totalSupply);
}



}
