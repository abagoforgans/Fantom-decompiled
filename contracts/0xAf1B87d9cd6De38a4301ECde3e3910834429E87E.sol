contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor151;
address owner;
address sub_a23596d5Address;
address configAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function config() payable {
    return configAddress
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_a23596d5(?) payable {
    return sub_a23596d5Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x658be007: owner, 0
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x658be007: owner, arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0xe045524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_4b22b432(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor151:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 0
    sub_a23596d5Address = address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x79502c55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    configAddress = ext_call.return_data[12 len 20]
    stor151 = 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_ddaf31ea(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if sub_a23596d5Address != msg.sender:
        revert with 0, 'vault only'
    require ('cd', 36).length >= 64
    require ext_code.size(sub_a23596d5Address)
    staticcall sub_a23596d5Address.0x99fbab88 with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[416] = ext_call.return_data[12 len 20]
    require ext_code.size(configAddress)
    staticcall configAddress.0x52737143 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'meowFee should not zero address'
    require ext_code.size(configAddress)
    staticcall configAddress.0x52737143 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[32]) != tx.origin:
        revert with 0, 'not position owner'
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).health(uint256 arg1) with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'not active position'
    require ext_code.size(mem[428 len 20])
    staticcall mem[428 len 20].baseToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ('cd', 36)[1] > ('cd', 36)[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1bf01789 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ('cd', 36)[0] - ('cd', 36)[1], address(ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[64]
}

function sub_6822872b(?) payable {
    require calldata.size - 4 >= 96
    if not stor151:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 0
    if sub_a23596d5Address != msg.sender:
        revert with 0, 'vault only'
    require ext_code.size(sub_a23596d5Address)
    staticcall sub_a23596d5Address.0x99fbab88 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if ext_call.return_data[44 len 20] != tx.origin:
        revert with 0, 'canChangeSLTP::not position owner'
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).health(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a23596d5Address)
    staticcall sub_a23596d5Address.0xea7d530f with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'canChangeSLTP::bad stop loss factor'
            if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg2 * ext_call.return_data[0] <= 0:
                revert with 0, 'canChangeSLTP::bad stop loss factor'
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                if 0 <= 10000 * ext_call.return_data[0]:
                    revert with 0, 'canChangeSLTP::bad stop loss factor'
            else:
                if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * ext_call.return_data[0] <= 10000 * ext_call.return_data[0]:
                    revert with 0, 'canChangeSLTP::bad stop loss factor'
    if arg3:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'canChangeSLTP::bad take profit factor'
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg3 * ext_call.return_data[0] >= 0:
                revert with 0, 'canChangeSLTP::bad take profit factor'
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                if 0 >= 10000 * ext_call.return_data[0]:
                    revert with 0, 'canChangeSLTP::bad take profit factor'
            else:
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg3 * ext_call.return_data[0] >= 10000 * ext_call.return_data[0]:
                    revert with 0, 'canChangeSLTP::bad take profit factor'
    stor151 = 1
    return 1
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit 0x658be007: 0, msg.sender
        stor151 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit 0x658be007: 0, msg.sender
            stor151 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit 0x658be007: 0, msg.sender
                stor151 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0x658be007: 0, msg.sender
                    stor151 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0x658be007: 0, msg.sender
                        stor151 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0x658be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                        if uint8(stor0.field_8):
                            stor151 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                            if uint8(stor0.field_8):
                                stor151 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor151 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
}



}
