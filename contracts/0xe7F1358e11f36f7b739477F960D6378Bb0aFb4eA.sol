contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
address devaddr;
address sub_6efaefe7Address;
array of struct poolInfo;
mapping of struct userInfo;
mapping of uint256 sub_43dce47d;
uint256 stor3510;
uint256 stor456E;
uint256 stor510F;
uint256 stor5FEF;
array of address stor51848699043762354786445001410105671568266765734117956169291548475795829136640;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136641;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136642;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136643;
uint256 stor82CE;
uint256 stor90B6;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function sub_43dce47d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_43dce47d[arg1]
}

function sub_6efaefe7(?) payable {
    return sub_6efaefe7Address
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function canMint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(sub_43dce47d[address(arg1)])
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devaddr != msg.sender:
        revert with 0, '!dev'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function add(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 3 <= poolInfo.length:
        revert with 0, 'max pool'
    if arg3 >= 10:
        revert with 0, 'max fee'
    poolInfo.length++
    stor72A1[stor153.length] = arg1
    stor72A1[stor153.length] = 0
    stor72A1[stor153.length] = arg2
    stor72A1[stor153.length] = arg3
}

function sub_4a487a90(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp < userInfo[arg1][address(arg2)].field_512:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 and block.timestamp - userInfo[arg1][address(arg2)].field_512 > -1 / userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.timestamp * userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512) - (userInfo[arg1][address(arg2)].field_512 * userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512) / 8760 * 24 * 3600 / 10^18 > !userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((block.timestamp * userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512) - (userInfo[arg1][address(arg2)].field_512 * userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512) / 8760 * 24 * 3600 / 10^18) + userInfo[arg1][address(arg2)].field_256)
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        sub_6efaefe7Address = arg1
        devaddr = arg2
        stor456E = 1725 * 10^16
        stor510F = 1129312825 * 10^12 * 3600
        stor5FEF = 460096782 * 10^16
        stor90B6 = 15 * 10^17
        stor82CE = 576777176498 * 10^16
        stor3510 = 100 * 10^18
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            sub_6efaefe7Address = arg1
            devaddr = arg2
            stor456E = 1725 * 10^16
            stor510F = 1129312825 * 10^12 * 3600
            stor5FEF = 460096782 * 10^16
            stor90B6 = 15 * 10^17
            stor82CE = 576777176498 * 10^16
            stor3510 = 100 * 10^18
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                sub_6efaefe7Address = arg1
                devaddr = arg2
                stor456E = 1725 * 10^16
                stor510F = 1129312825 * 10^12 * 3600
                stor5FEF = 460096782 * 10^16
                stor90B6 = 15 * 10^17
                stor82CE = 576777176498 * 10^16
                stor3510 = 100 * 10^18
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    sub_6efaefe7Address = arg1
                    devaddr = arg2
                    stor456E = 1725 * 10^16
                    stor510F = 1129312825 * 10^12 * 3600
                    stor5FEF = 460096782 * 10^16
                    stor90B6 = 15 * 10^17
                    stor82CE = 576777176498 * 10^16
                    stor3510 = 100 * 10^18
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        sub_6efaefe7Address = arg1
                        devaddr = arg2
                        stor456E = 1725 * 10^16
                        stor510F = 1129312825 * 10^12 * 3600
                        stor5FEF = 460096782 * 10^16
                        stor90B6 = 15 * 10^17
                        stor82CE = 576777176498 * 10^16
                        stor3510 = 100 * 10^18
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        sub_6efaefe7Address = arg1
                        devaddr = arg2
                        stor456E = 1725 * 10^16
                        stor510F = 1129312825 * 10^12 * 3600
                        stor5FEF = 460096782 * 10^16
                        stor90B6 = 15 * 10^17
                        stor82CE = 576777176498 * 10^16
                        stor3510 = 100 * 10^18
                        uint8(stor0.field_8) = 0
}

function leave(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[128] = poolInfo[arg1].field_256
    mem[160] = poolInfo[arg1].field_512
    mem[192] = poolInfo[arg1].field_768
    mem[224] = userInfo[arg1][address(msg.sender)].field_0
    mem[256] = userInfo[arg1][address(msg.sender)].field_256
    mem[288] = userInfo[arg1][address(msg.sender)].field_512
    if block.timestamp < userInfo[arg1][address(msg.sender)].field_512:
        revert with 0, 17
    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][address(msg.sender)].field_0:
        revert with 0, 17
    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512 and block.timestamp - userInfo[arg1][address(msg.sender)].field_512 > -1 / userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.timestamp * userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512) - (userInfo[arg1][address(msg.sender)].field_512 * userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512) / 8760 * 24 * 3600 / 10^18 > !userInfo[arg1][address(msg.sender)].field_256:
        revert with 0, 17
    userInfo[arg1][msg.sender].field_256 = ((block.timestamp * userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512) - (userInfo[arg1][address(msg.sender)].field_512 * userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512) / 8760 * 24 * 3600 / 10^18) + userInfo[arg1][address(msg.sender)].field_256
    if arg2 < userInfo[arg1][msg.sender].field_0:
        if arg2:
            if poolInfo[arg1].field_256 < arg2:
                revert with 0, 17
            poolInfo[arg1].field_256 -= arg2
            if userInfo[arg1][msg.sender].field_0 < arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 -= arg2
            userInfo[arg1][msg.sender].field_512 = block.timestamp
            mem[356] = msg.sender
            mem[388] = arg2
            mem[320] = 68
            mem[356 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[352 len 4] = unknown_0xa9059cbb(?????)
            mem[420] = 32
            mem[452] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[484 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
            mem[552] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if poolInfo[arg1].field_0:
                        revert with memory
                          from 128
                           len poolInfo[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolInfo[arg1].field_0:
                    require poolInfo[arg1].field_0 >= 32
                    require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[516] == bool(mem[516])
                    if not mem[516]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Leave(arg1, msg.sender, arg2);
    else:
        if userInfo[arg1][msg.sender].field_0:
            if poolInfo[arg1].field_256 < userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            poolInfo[arg1].field_256 -= userInfo[arg1][msg.sender].field_0
            if userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 = 0
            userInfo[arg1][msg.sender].field_512 = block.timestamp
            mem[356] = msg.sender
            mem[388] = userInfo[arg1][msg.sender].field_0
            mem[320] = 68
            mem[356 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[352 len 4] = unknown_0xa9059cbb(?????)
            mem[420] = 32
            mem[452] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[484 len 96] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0, 0
            mem[552] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if poolInfo[arg1].field_0:
                        revert with memory
                          from 128
                           len poolInfo[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolInfo[arg1].field_0:
                    require poolInfo[arg1].field_0 >= 32
                    require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[516] == bool(mem[516])
                    if not mem[516]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Leave(arg1, msg.sender, userInfo[arg1][msg.sender].field_0);
    stor101 = 1
}

function enter(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[128] = poolInfo[arg1].field_256
    mem[160] = poolInfo[arg1].field_512
    mem[192] = poolInfo[arg1].field_768
    mem[224] = userInfo[arg1][address(msg.sender)].field_0
    mem[256] = userInfo[arg1][address(msg.sender)].field_256
    mem[288] = userInfo[arg1][address(msg.sender)].field_512
    if block.timestamp < userInfo[arg1][address(msg.sender)].field_512:
        revert with 0, 17
    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][address(msg.sender)].field_0:
        revert with 0, 17
    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512 and block.timestamp - userInfo[arg1][address(msg.sender)].field_512 > -1 / userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.timestamp * userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512) - (userInfo[arg1][address(msg.sender)].field_512 * userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512) / 8760 * 24 * 3600 / 10^18 > !userInfo[arg1][address(msg.sender)].field_256:
        revert with 0, 17
    userInfo[arg1][msg.sender].field_256 = ((block.timestamp * userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512) - (userInfo[arg1][address(msg.sender)].field_512 * userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_512) / 8760 * 24 * 3600 / 10^18) + userInfo[arg1][address(msg.sender)].field_256
    if not arg2:
        emit Enter(arg1, msg.sender, arg2);
    else:
        mem[356] = msg.sender
        mem[388] = this.address
        mem[420] = arg2
        mem[320] = 100
        mem[356 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[352 len 4] = unknown_0x23b872dd(?????)
        mem[452] = 32
        mem[484] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[516 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
        mem[616] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if poolInfo[arg1].field_0:
                    revert with memory
                      from 128
                       len poolInfo[arg1].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if poolInfo[arg1].field_0:
                require poolInfo[arg1].field_0 >= 32
                require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not poolInfo[arg1].field_768:
                if poolInfo[arg1].field_256 > !arg2:
                    revert with 0, 17
                poolInfo[arg1].field_256 += arg2
                if userInfo[arg1][msg.sender].field_0 > !arg2:
                    revert with 0, 17
                userInfo[arg1][msg.sender].field_0 += arg2
                userInfo[arg1][msg.sender].field_512 = block.timestamp
                emit Enter(arg1, msg.sender, arg2);
            else:
                if arg2 and poolInfo[arg1].field_768 > -1 / arg2:
                    revert with 0, 17
                mem[552] = devaddr
                mem[584] = arg2 * poolInfo[arg1].field_768 / 100
                mem[516] = 68
                mem[548 len 4] = unknown_0xa9059cbb(?????)
                mem[616] = 32
                mem[648] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[680 len 96] = 0, devaddr, arg2 * poolInfo[arg1].field_768 / 100, 0
                mem[748] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, 0, devaddr, arg2 * poolInfo[arg1].field_768 / 100, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, devaddr, arg2 * poolInfo[arg1].field_768 / 100, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if poolInfo[arg1].field_0:
                            revert with memory
                              from 128
                               len poolInfo[arg1].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if poolInfo[arg1].field_0:
                        require poolInfo[arg1].field_0 >= 32
                        require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                        if not poolInfo[arg1].field_256:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[712 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[712] == bool(mem[712])
                        if not mem[712]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg2 < arg2 * poolInfo[arg1].field_768 / 100:
                    revert with 0, 17
                if poolInfo[arg1].field_256 > !(arg2 - (arg2 * poolInfo[arg1].field_768 / 100)):
                    revert with 0, 17
                poolInfo[arg1].field_256 = poolInfo[arg1].field_256 + arg2 - (arg2 * poolInfo[arg1].field_768 / 100)
                if userInfo[arg1][msg.sender].field_0 > !(arg2 - (arg2 * poolInfo[arg1].field_768 / 100)):
                    revert with 0, 17
                userInfo[arg1][msg.sender].field_0 = userInfo[arg1][msg.sender].field_0 + arg2 - (arg2 * poolInfo[arg1].field_768 / 100)
                userInfo[arg1][msg.sender].field_512 = block.timestamp
                emit Enter(arg1, msg.sender, arg2 - (arg2 * poolInfo[arg1].field_768 / 100));
        else:
            mem[516] = return_data.size
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[548] == bool(mem[548])
                if not mem[548]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not poolInfo[arg1].field_768:
                if poolInfo[arg1].field_256 > !arg2:
                    revert with 0, 17
                poolInfo[arg1].field_256 += arg2
                if userInfo[arg1][msg.sender].field_0 > !arg2:
                    revert with 0, 17
                userInfo[arg1][msg.sender].field_0 += arg2
                userInfo[arg1][msg.sender].field_512 = block.timestamp
                emit Enter(arg1, msg.sender, arg2);
            else:
                if arg2 and poolInfo[arg1].field_768 > -1 / arg2:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 553] = devaddr
                mem[ceil32(return_data.size) + 585] = arg2 * poolInfo[arg1].field_768 / 100
                mem[ceil32(return_data.size) + 517] = 68
                mem[ceil32(return_data.size) + 549 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 617] = 32
                mem[ceil32(return_data.size) + 649] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 681 len 96] = 0, devaddr, arg2 * poolInfo[arg1].field_768 / 100, 0
                mem[ceil32(return_data.size) + 749] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, 0, devaddr, arg2 * poolInfo[arg1].field_768 / 100, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, devaddr, arg2 * poolInfo[arg1].field_768 / 100, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if poolInfo[arg1].field_0:
                            revert with memory
                              from 128
                               len poolInfo[arg1].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if poolInfo[arg1].field_0:
                        require poolInfo[arg1].field_0 >= 32
                        require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                        if not poolInfo[arg1].field_256:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 713] == bool(mem[ceil32(return_data.size) + 713])
                        if not mem[ceil32(return_data.size) + 713]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if arg2 < arg2 * poolInfo[arg1].field_768 / 100:
                    revert with 0, 17
                if poolInfo[arg1].field_256 > !(arg2 - (arg2 * poolInfo[arg1].field_768 / 100)):
                    revert with 0, 17
                poolInfo[arg1].field_256 = poolInfo[arg1].field_256 + arg2 - (arg2 * poolInfo[arg1].field_768 / 100)
                if userInfo[arg1][msg.sender].field_0 > !(arg2 - (arg2 * poolInfo[arg1].field_768 / 100)):
                    revert with 0, 17
                userInfo[arg1][msg.sender].field_0 = userInfo[arg1][msg.sender].field_0 + arg2 - (arg2 * poolInfo[arg1].field_768 / 100)
                userInfo[arg1][msg.sender].field_512 = block.timestamp
                emit Enter(arg1, msg.sender, arg2 - (arg2 * poolInfo[arg1].field_768 / 100));
    stor101 = 1
}

function sub_8065f0a1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not sub_43dce47d[msg.sender]:
        revert with 0, '!auth'
    mem[100] = this.address
    require ext_code.size(sub_6efaefe7Address)
    staticcall sub_6efaefe7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(arg1)
    if ext_call.return_data[0] <= arg2 / 10:
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_6efaefe7Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call sub_6efaefe7Address with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
    else:
        mem[ceil32(return_data.size) + 164] = arg2 / 10
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_6efaefe7Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 / 10, 0
        mem[ceil32(return_data.size) + 328] = 0
        call sub_6efaefe7Address with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 / 10, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 / 10, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 264] = this.address
        require ext_code.size(sub_6efaefe7Address)
        staticcall sub_6efaefe7Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 296] = address(arg1)
        if ext_call.return_data[0] <= arg2:
            mem[(2 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 260] = 68
            mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 360] = 32
            mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_6efaefe7Address):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), ext_call.return_data[0], 0
            mem[(2 * ceil32(return_data.size)) + 492] = 0
            call sub_6efaefe7Address with:
               funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
        else:
            mem[(2 * ceil32(return_data.size)) + 328] = arg2
            mem[(2 * ceil32(return_data.size)) + 260] = 68
            mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 360] = 32
            mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_6efaefe7Address):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), arg2, 0
            mem[(2 * ceil32(return_data.size)) + 492] = 0
            call sub_6efaefe7Address with:
               funct Mask(32, 224, 0, address(arg1), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(arg1), arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
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
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
    require ext_code.size(sub_6efaefe7Address)
    staticcall sub_6efaefe7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg1)
    if ext_call.return_data[0] <= arg2:
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_6efaefe7Address):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call sub_6efaefe7Address with:
           funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
    else:
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_6efaefe7Address):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), arg2, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call sub_6efaefe7Address with:
           funct Mask(32, 224, 0, address(arg1), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
