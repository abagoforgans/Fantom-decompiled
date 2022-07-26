contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint8 stor51;
address owner;
address sub_a23596d5Address;
address configAddress;

function config() payable {
    return configAddress
}

function owner() payable {
    return owner
}

function sub_a23596d5(?) payable {
    return sub_a23596d5Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function sub_4b22b432(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor51 = 0
    sub_a23596d5Address = address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x79502c55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    configAddress = ext_call.return_data[12 len 20]
    stor51 = 1
}

function sub_83b243be(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_a23596d5Address)
    staticcall sub_a23596d5Address.0x99fbab88 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[96] = ext_call.return_data[12 len 20]
    return mem[108 len 20], 
           address(ext_call.return_data[32]),
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[256],
           ext_call.return_data[288]
}

function sub_ddaf31ea(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
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
    if ext_call.return_data[0] <= 0:
        revert with 0, 'canChangeSLTP::position is closed'
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
    return 1
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit 0xfe8be007: 0, msg.sender
        stor51 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit 0xfe8be007: 0, msg.sender
            stor51 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit 0xfe8be007: 0, msg.sender
                stor51 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0xfe8be007: 0, msg.sender
                    stor51 = 1
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
                        emit 0xfe8be007: 0, msg.sender
                        stor51 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0xfe8be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                        if uint8(stor0.field_8):
                            stor51 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                            if uint8(stor0.field_8):
                                stor51 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor51 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
}



}
