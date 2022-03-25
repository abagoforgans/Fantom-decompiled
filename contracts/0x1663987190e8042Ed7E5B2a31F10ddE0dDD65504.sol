contract main {




// =====================  Runtime code  =====================


#
#  - sub_50fd96a8(?)
#
const sub_04b62f29(?) = 4101

const sub_0a19dd33(?) = 3843

const sub_0aff90bb(?) = 4096

const sub_1ac919b0(?) = 4098

const sub_2bfcc373(?) = 4102

const sub_372ce3df(?) = 4105

const sub_4846e345(?) = 4107

const sub_67fc176b(?) = 3841

const sub_69d1cb27(?) = 4104

const sub_73a93af6(?) = 4106

const sub_8c7b9980(?) = 4103

const sub_911fc3f1(?) = 4099

const sub_b76361c2(?) = 4100

const sub_bc99d6ae(?) = 2560

const sub_c7222c72(?) = 3842

const sub_c7ea4889(?) = 4097

const sub_cbf02fd5(?) = 10000

const sub_e69993ac(?) = 10000

const ERR_NO_ERROR = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 stor51;
mapping of uint256 sub_fd26fef1;
address owner;
uint256 sub_d65cb5aa;
uint256 sub_59eb3570;
uint256 sub_7c4b7a86;
address addressProvider;

function addressProvider() payable {
    return addressProvider
}

function sub_3b8b09b7(?) payable {
    return sub_d65cb5aa
}

function sub_50fca4bd(?) payable {
    return sub_59eb3570
}

function sub_572511bc(?) payable {
    return sub_7c4b7a86
}

function sub_59eb3570(?) payable {
    return sub_59eb3570
}

function sub_7c4b7a86(?) payable {
    return sub_7c4b7a86
}

function owner() payable {
    return owner
}

function sub_d65cb5aa(?) payable {
    return sub_d65cb5aa
}

function sub_fd26fef1(?) payable {
    require calldata.size - 4 >= 32
    return sub_fd26fef1[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d3f70634(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_59eb3570 = arg1
    emit 0x3ec85924: arg1
}

function sub_f1bd51ea(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d65cb5aa = arg1
    emit 0x3b166133: arg1
}

function sub_51ce9561(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7c4b7a86 = arg1
    emit MintFeeChanged(arg1);
}

function sub_03ec357f(?) payable {
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_73c9641d(?) payable {
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function rewardUpdate(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x84d9319e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x48ebb08d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function canMint(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xc2ba4744 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function canDeposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4bf0d331 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_b36607e7(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg3:
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args arg1
    else:
        if not arg2:
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args arg1
        else:
            staticcall address(ext_call.return_data[0]).0x660eab83 with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5a13fd77(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg3:
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args arg1
    else:
        if not arg2:
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args arg1
        else:
            staticcall address(ext_call.return_data[0]).0x65be454d with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_35870d2e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 10^uint8(ext_call.return_data[0])
}

function initialize() payable {
    if uint8(stor0.field_8):
        stor51 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            stor51 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                stor51 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                stor51 = 1
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = arg1
        emit OwnershipTransferred(0, arg1);
        sub_d65cb5aa = 30000
        sub_59eb3570 = 50000
        sub_7c4b7a86 = 50
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = arg1
            emit OwnershipTransferred(0, arg1);
            sub_d65cb5aa = 30000
            sub_59eb3570 = 50000
            sub_7c4b7a86 = 50
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = arg1
                emit OwnershipTransferred(0, arg1);
                sub_d65cb5aa = 30000
                sub_59eb3570 = 50000
                sub_7c4b7a86 = 50
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                owner = arg1
                emit OwnershipTransferred(0, arg1);
                uint8(stor0.field_8) = 0
                sub_d65cb5aa = 30000
                sub_59eb3570 = 50000
                sub_7c4b7a86 = 50
                uint8(stor0.field_8) = 0
}

function sub_6aee9c13(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > ext_call.return_data[0]:
        return 0
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0] >= 0
    if sub_59eb3570 * ext_call.return_data[0] / ext_call.return_data[0] != sub_59eb3570:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ext_call.return_data[0] >= sub_59eb3570 * ext_call.return_data[0] / 10000
}

function sub_da0a0432(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > ext_call.return_data[0]:
        return 0
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0] >= 0
    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ext_call.return_data[0] >= sub_d65cb5aa * ext_call.return_data[0] / 10000
}

function sub_557c138b(?) payable {
    require calldata.size - 4 >= 64
    stor51++
    if not arg2:
        revert with 0, 'non-zero amount expected'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'insufficient debt outstanding'
    require ext_code.size(arg1)
    staticcall arg1.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'insufficient allowance'
    require ext_code.size(arg1)
    call arg1.burnFrom(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x84d9319e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x48ebb08d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x55ceeb31 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Repaid(arg2, arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function repay(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    stor51++
    if not arg2:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4096
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4098
    require ext_code.size(arg1)
    staticcall arg1.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4099
    require ext_code.size(arg1)
    call arg1.burnFrom(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x84d9319e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x48ebb08d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x55ceeb31 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Repaid(arg2, arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        return 0
}

function sub_4764efb0(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > ext_call.return_data[0]:
        return 0
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg3:
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args arg1
    else:
        if not arg2:
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args arg1
        else:
            staticcall address(ext_call.return_data[0]).0x660eab83 with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0] >= 0
    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ext_call.return_data[0] >= sub_d65cb5aa * ext_call.return_data[0] / 10000
}

function sub_905ca247(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > ext_call.return_data[0]:
        return 0
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg3:
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args arg1
    else:
        if not arg2:
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args arg1
        else:
            staticcall address(ext_call.return_data[0]).0x660eab83 with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0] >= 0
    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ext_call.return_data[0] >= sub_d65cb5aa * ext_call.return_data[0] / 10000
}

function sub_a03a2689(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        return 0
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg3:
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args arg1
    else:
        if not arg2:
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args arg1
        else:
            staticcall address(ext_call.return_data[0]).0x65be454d with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0] >= 0
    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ext_call.return_data[0] >= sub_d65cb5aa * ext_call.return_data[0] / 10000
}

function sub_f4305a99(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        return 0
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg3:
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args arg1
    else:
        if not arg2:
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args arg1
        else:
            staticcall address(ext_call.return_data[0]).0x65be454d with:
                    gas gas_remaining wei
                   args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0] >= 0
    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ext_call.return_data[0] >= sub_d65cb5aa * ext_call.return_data[0] / 10000
}

function sub_cc7b9327(?) payable {
    require calldata.size - 4 >= 32
    stor51++
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'non-zero amount expected'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'insufficient debt outstanding'
    require ext_code.size(arg1)
    staticcall arg1.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'insufficient allowance'
    require ext_code.size(arg1)
    call arg1.burnFrom(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x84d9319e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x48ebb08d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x55ceeb31 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Repaid(ext_call.return_data[0], arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function sub_bcc2ff51(?) payable {
    require calldata.size - 4 >= 32
    stor51++
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4096
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4098
    require ext_code.size(arg1)
    staticcall arg1.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4099
    require ext_code.size(arg1)
    call arg1.burnFrom(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x84d9319e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x48ebb08d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x55ceeb31 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Repaid(ext_call.return_data[0], arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        return 0
}

function sub_a02bda7a(?) payable {
    require calldata.size - 4 >= 64
    stor51++
    if not arg2:
        revert with 0, 'non-zero amount expected'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4bf0d331 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'deposit of the token prohibited'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'insufficient token balance'
    require ext_code.size(arg1)
    staticcall arg1.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'insufficient allowance'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'token has no value'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x84d9319e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x48ebb08d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[352 len 4] = uint32(arg2)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg2),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x551f8e2a with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposited(arg2, arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    stor51++
    if not arg2:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4096
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4bf0d331 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4102
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4098
    require ext_code.size(arg1)
    staticcall arg1.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4099
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4104
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x84d9319e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x48ebb08d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[352 len 4] = uint32(arg2)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg2),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x551f8e2a with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposited(arg2, arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        return 0
}

function sub_90c36959(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == ext_call.return_data[0]:
        revert with 0, 'collateral token has no value'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg3 * ext_call.return_data[0] / 10000 < ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] > arg3 * ext_call.return_data[0] / 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (arg3 * ext_call.return_data[0] / 10000) + -ext_call.return_data[0] + 1:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + 1 < 0 / ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + 1)
        if 10^uint8(ext_call.return_data[0]) + (arg3 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / (arg3 * ext_call.return_data[0] / 10000) + -ext_call.return_data[0] + 1 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^uint8(ext_call.return_data[0]) + (arg3 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) + 1 < 10^uint8(ext_call.return_data[0]) + (arg3 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((10^uint8(ext_call.return_data[0]) + (arg3 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) - (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) + 1)
    if 0 < ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] > 0:
        revert with 0, 'SafeMath: subtraction overflow'
    if -ext_call.return_data[0] + 1 < -ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not -ext_call.return_data[0] + 1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + 1 < 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + 1)
    if 10^uint8(ext_call.return_data[0]) - (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / -ext_call.return_data[0] + 1 != 10^uint8(ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^uint8(ext_call.return_data[0]) - (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) + 1 < 10^uint8(ext_call.return_data[0]) - (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((10^uint8(ext_call.return_data[0]) - (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) + 1)
}

function sub_0feea739(?) payable {
    require calldata.size - 4 >= 64
    stor51++
    if not arg2:
        revert with 0, 'non-zero amount expected'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'insufficient collateral balance'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e,
                    mem[201 len 27]
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args msg.sender
    else:
        if not arg1:
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args msg.sender
        else:
            staticcall address(ext_call.return_data[0]).0x65be454d with:
                    gas gas_remaining wei
                   args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[265 len 27]
    else:
        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[265 len 27]
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x84d9319e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x48ebb08d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x55ceeb31 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 371 len 22]
    emit Withdrawn(arg2, arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    stor51++
    if not arg2:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4096
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4098
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4101
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args msg.sender
    else:
        if not arg1:
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args msg.sender
        else:
            staticcall address(ext_call.return_data[0]).0x65be454d with:
                    gas gas_remaining wei
                   args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            if stor51 + 1 != stor51:
                revert with 0, 'ReentrancyGuard: reentrant call'
            return 4101
    else:
        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
            if stor51 + 1 != stor51:
                revert with 0, 'ReentrancyGuard: reentrant call'
            return 4101
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x84d9319e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x48ebb08d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x55ceeb31 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 371 len 22]
    emit Withdrawn(arg2, arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        return 0
}

function sub_850e102f(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == ext_call.return_data[0]:
        revert with 0, 'collateral token has no value'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            if ext_call.return_data[0] >= 0:
                return 0
        else:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]:
                    return (10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0])
    else:
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] < arg3 * ext_call.return_data[0] / 10000:
            if ext_call.return_data[0] >= 0:
                return 0
        else:
            if arg3 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - (arg3 * ext_call.return_data[0] / 10000):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg3 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] - (arg3 * ext_call.return_data[0] / 10000) != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg3 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    return ((ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg3 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0])
    return ext_call.return_data[0]
}

function sub_dc2b18cc(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == ext_call.return_data[0]:
        revert with 0, 'collateral token has no value'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            if ext_call.return_data[0] >= 0:
                return 0
        else:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]:
                    return (10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0])
    else:
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] < arg3 * ext_call.return_data[0] / 10000:
            if ext_call.return_data[0] >= 0:
                return 0
        else:
            if arg3 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - (arg3 * ext_call.return_data[0] / 10000):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg3 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] - (arg3 * ext_call.return_data[0] / 10000) != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg3 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    return ((ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg3 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0])
    return ext_call.return_data[0]
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        addressProvider = arg2
        owner = arg1
        emit OwnershipTransferred(0, arg1);
        sub_d65cb5aa = 30000
        sub_59eb3570 = 50000
        sub_7c4b7a86 = 50
        stor51 = 1
        stor51 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            addressProvider = arg2
            owner = arg1
            emit OwnershipTransferred(0, arg1);
            sub_d65cb5aa = 30000
            sub_59eb3570 = 50000
            sub_7c4b7a86 = 50
            stor51 = 1
            stor51 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            addressProvider = arg2
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = arg1
                emit OwnershipTransferred(0, arg1);
                sub_d65cb5aa = 30000
                sub_59eb3570 = 50000
                sub_7c4b7a86 = 50
                stor51 = 1
                stor51 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = arg1
                    emit OwnershipTransferred(0, arg1);
                    sub_d65cb5aa = 30000
                    sub_59eb3570 = 50000
                    sub_7c4b7a86 = 50
                    stor51 = 1
                    stor51 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = arg1
                    emit OwnershipTransferred(0, arg1);
                    uint8(stor0.field_8) = 0
                    sub_d65cb5aa = 30000
                    sub_59eb3570 = 50000
                    sub_7c4b7a86 = 50
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        stor51 = 1
                        stor51 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor51 = 1
                            stor51 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            stor51 = 1
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor51 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if ext_code.size(this.address):
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                                    mem[210 len 18]
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

function sub_54a36bcf(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == ext_call.return_data[0]:
        revert with 0, 'collateral token has no value'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            return 0
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            if not sub_d65cb5aa:
                revert with 0, 'SafeMath: division by zero'
            if 1 > 0 / sub_d65cb5aa:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / sub_d65cb5aa) - 1:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0])
            if -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / (0 / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0])
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_d65cb5aa:
            revert with 0, 'SafeMath: division by zero'
        if 1 > 10000 * ext_call.return_data[0] / sub_d65cb5aa:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (10000 * ext_call.return_data[0] / sub_d65cb5aa) - 1:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0])
        if -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / (10000 * ext_call.return_data[0] / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (-10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0])
    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] < arg3 * ext_call.return_data[0] / 10000:
        return 0
    if arg3 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - (arg3 * ext_call.return_data[0] / 10000):
        if not sub_d65cb5aa:
            revert with 0, 'SafeMath: division by zero'
        if 1 > 0 / sub_d65cb5aa:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / sub_d65cb5aa) - 1:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0])
        if -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / (0 / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0])
    if (10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / ext_call.return_data[0] - (arg3 * ext_call.return_data[0] / 10000) != 10000:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_d65cb5aa:
        revert with 0, 'SafeMath: division by zero'
    if 1 > (10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / sub_d65cb5aa:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ((10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / sub_d65cb5aa) - 1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ((10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (-10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0])
}

function sub_d4ca4d74(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == ext_call.return_data[0]:
        revert with 0, 'collateral token has no value'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            return 0
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            if not sub_d65cb5aa:
                revert with 0, 'SafeMath: division by zero'
            if 1 > 0 / sub_d65cb5aa:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / sub_d65cb5aa) - 1:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0])
            if -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / (0 / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0])
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_d65cb5aa:
            revert with 0, 'SafeMath: division by zero'
        if 1 > 10000 * ext_call.return_data[0] / sub_d65cb5aa:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (10000 * ext_call.return_data[0] / sub_d65cb5aa) - 1:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0])
        if -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / (10000 * ext_call.return_data[0] / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (-10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0])
    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] < arg3 * ext_call.return_data[0] / 10000:
        return 0
    if arg3 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - (arg3 * ext_call.return_data[0] / 10000):
        if not sub_d65cb5aa:
            revert with 0, 'SafeMath: division by zero'
        if 1 > 0 / sub_d65cb5aa:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / sub_d65cb5aa) - 1:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0])
        if -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / (0 / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0])
    if (10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / ext_call.return_data[0] - (arg3 * ext_call.return_data[0] / 10000) != 10000:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_d65cb5aa:
        revert with 0, 'SafeMath: division by zero'
    if 1 > (10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / sub_d65cb5aa:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ((10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / sub_d65cb5aa) - 1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ((10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (-10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg3 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0])
}

function sub_893ebfd5(?) payable {
    require calldata.size - 4 >= 64
    stor51++
    if not arg2:
        revert with 0, 'non-zero amount expected'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xc2ba4744 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'minting of the token prohibited'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'token has no value'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > ext_call.return_data[0]:
        revert with 0, 'insufficient collateral value'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args msg.sender
    else:
        if not arg1:
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args msg.sender
        else:
            staticcall address(ext_call.return_data[0]).0x660eab83 with:
                    gas gas_remaining wei
                   args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            revert with 0, 'insufficient collateral value'
    else:
        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
            revert with 0, 'insufficient collateral value'
    if not arg2:
        if 1 >= arg2:
            revert with 0, 'amount too low'
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x84d9319e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x48ebb08d with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x551f8e2a with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_fd26fef1[address(arg1)]++
        if 1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg1)
        call arg1.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg2 - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Minted(arg2, 1, arg1, msg.sender);
    else:
        if sub_7c4b7a86 * arg2 / arg2 != sub_7c4b7a86:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if (sub_7c4b7a86 * arg2 / 10000) + 1 < sub_7c4b7a86 * arg2 / 10000:
            revert with 0, 'SafeMath: addition overflow'
        if (sub_7c4b7a86 * arg2 / 10000) + 1 >= arg2:
            revert with 0, 'amount too low'
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x84d9319e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x48ebb08d with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x551f8e2a with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (sub_7c4b7a86 * arg2 / 10000) + sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_fd26fef1[address(arg1)] = (sub_7c4b7a86 * arg2 / 10000) + sub_fd26fef1[address(arg1)] + 1
        if (sub_7c4b7a86 * arg2 / 10000) + 1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg1)
        call arg1.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg2 + -(sub_7c4b7a86 * arg2 / 10000) - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Minted(arg2, (sub_7c4b7a86 * arg2 / 10000) + 1, arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    stor51++
    if not arg2:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4096
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xc2ba4744 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4103
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4104
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > ext_call.return_data[0]:
        if stor51 + 1 != stor51:
            revert with 0, 'ReentrancyGuard: reentrant call'
        return 4101
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args msg.sender
    else:
        if not arg1:
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args msg.sender
        else:
            staticcall address(ext_call.return_data[0]).0x660eab83 with:
                    gas gas_remaining wei
                   args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            if stor51 + 1 != stor51:
                revert with 0, 'ReentrancyGuard: reentrant call'
            return 4101
    else:
        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
            if stor51 + 1 != stor51:
                revert with 0, 'ReentrancyGuard: reentrant call'
            return 4101
    if not arg2:
        if 1 >= arg2:
            if stor51 + 1 != stor51:
                revert with 0, 'ReentrancyGuard: reentrant call'
            return 4097
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x84d9319e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x48ebb08d with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x551f8e2a with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_fd26fef1[address(arg1)]++
        if 1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg1)
        call arg1.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg2 - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Minted(arg2, 1, arg1, msg.sender);
    else:
        if sub_7c4b7a86 * arg2 / arg2 != sub_7c4b7a86:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if (sub_7c4b7a86 * arg2 / 10000) + 1 < sub_7c4b7a86 * arg2 / 10000:
            revert with 0, 'SafeMath: addition overflow'
        if (sub_7c4b7a86 * arg2 / 10000) + 1 >= arg2:
            if stor51 + 1 != stor51:
                revert with 0, 'ReentrancyGuard: reentrant call'
            return 4097
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x84d9319e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x48ebb08d with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x551f8e2a with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (sub_7c4b7a86 * arg2 / 10000) + sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_fd26fef1[address(arg1)] = (sub_7c4b7a86 * arg2 / 10000) + sub_fd26fef1[address(arg1)] + 1
        if (sub_7c4b7a86 * arg2 / 10000) + 1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg1)
        call arg1.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg2 + -(sub_7c4b7a86 * arg2 / 10000) - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Minted(arg2, (sub_7c4b7a86 * arg2 / 10000) + 1, arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        return 0
}

function sub_1e3eb86a(?) payable {
    require calldata.size - 4 >= 64
    stor51++
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == ext_call.return_data[0]:
        revert with 0, 'collateral token has no value'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            if ext_call.return_data[0] >= 0:
                revert with 0, 'non-zero amount expected'
            if not ext_call.return_data[0]:
                revert with 0, 'non-zero amount expected'
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xf7888aec with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'insufficient collateral balance'
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xf7888aec with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[265 len 27]
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x3ec357f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if not ext_call.return_data[0]:
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
            else:
                if not arg1:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    staticcall address(ext_call.return_data[0]).0x65be454d with:
                            gas gas_remaining wei
                           args msg.sender, address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] < 0:
                    revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[329 len 27]
            else:
                if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                    revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[329 len 27]
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x84d9319e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x48ebb08d with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x55ceeb31 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
            call arg1 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
        else:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'non-zero amount expected'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'insufficient collateral balance'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[393 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not 0 / ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn((0 / ext_call.return_data[0]), arg1, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        revert with 0, 'non-zero amount expected'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'insufficient collateral balance'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[393 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
            else:
                if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 'non-zero amount expected'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'insufficient collateral balance'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[393 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn((10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]), arg1, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        revert with 0, 'non-zero amount expected'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'insufficient collateral balance'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[393 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
    else:
        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] < arg2 * ext_call.return_data[0] / 10000:
            if ext_call.return_data[0] >= 0:
                revert with 0, 'non-zero amount expected'
            if not ext_call.return_data[0]:
                revert with 0, 'non-zero amount expected'
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xf7888aec with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'insufficient collateral balance'
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xf7888aec with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[265 len 27]
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x3ec357f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if not ext_call.return_data[0]:
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
            else:
                if not arg1:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    staticcall address(ext_call.return_data[0]).0x65be454d with:
                            gas gas_remaining wei
                           args msg.sender, address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] < 0:
                    revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[329 len 27]
            else:
                if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                    revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[329 len 27]
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x84d9319e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x48ebb08d with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x55ceeb31 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
            call arg1 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
        else:
            if arg2 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - (arg2 * ext_call.return_data[0] / 10000):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                    if not 0 / ext_call.return_data[0]:
                        revert with 0, 'non-zero amount expected'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'insufficient collateral balance'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[393 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not 0 / ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn((0 / ext_call.return_data[0]), arg1, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        revert with 0, 'non-zero amount expected'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'insufficient collateral balance'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[393 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
            else:
                if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] - (arg2 * ext_call.return_data[0] / 10000) != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'non-zero amount expected'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'insufficient collateral balance'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[393 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) >> 32
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn(((ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]), arg1, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        revert with 0, 'non-zero amount expected'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'insufficient collateral balance'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[393 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            revert with 0, 32, 37, 0xfe696e73756666696369656e7420636f6c6c61746572616c2076616c75652072656d61696e, mem[457 len 27]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function sub_db3243f2(?) payable {
    require calldata.size - 4 >= 64
    stor51++
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf7888aec with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == ext_call.return_data[0]:
        revert with 0, 'collateral token has no value'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            if ext_call.return_data[0] >= 0:
                if stor51 + 1 != stor51:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                return 4096
            if not ext_call.return_data[0]:
                if stor51 + 1 != stor51:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                return 4096
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xf7888aec with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if stor51 + 1 != stor51:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                return 4098
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xf7888aec with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if stor51 + 1 != stor51:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                return 4101
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x3ec357f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if not ext_call.return_data[0]:
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
            else:
                if not arg1:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    staticcall address(ext_call.return_data[0]).0x65be454d with:
                            gas gas_remaining wei
                           args msg.sender, address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] < 0:
                    if stor51 + 1 != stor51:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    return 4101
            else:
                if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                    if stor51 + 1 != stor51:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    return 4101
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x84d9319e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x48ebb08d with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x55ceeb31 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
            call arg1 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
        else:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                    if not 0 / ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4096
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4098
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not 0 / ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn((0 / ext_call.return_data[0]), arg1, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4096
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4098
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
            else:
                if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]:
                    if not 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4096
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4098
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn((10^uint8(ext_call.return_data[0]) * ext_call.return_data[0] / ext_call.return_data[0]), arg1, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4096
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4098
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
    else:
        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] < arg2 * ext_call.return_data[0] / 10000:
            if ext_call.return_data[0] >= 0:
                if stor51 + 1 != stor51:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                return 4096
            if not ext_call.return_data[0]:
                if stor51 + 1 != stor51:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                return 4096
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xf7888aec with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if stor51 + 1 != stor51:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                return 4098
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xf7888aec with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                if stor51 + 1 != stor51:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                return 4101
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x3ec357f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x73c9641d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if not ext_call.return_data[0]:
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
            else:
                if not arg1:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    staticcall address(ext_call.return_data[0]).0x65be454d with:
                            gas gas_remaining wei
                           args msg.sender, address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] < 0:
                    if stor51 + 1 != stor51:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    return 4101
            else:
                if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                    if stor51 + 1 != stor51:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    return 4101
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x84d9319e with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x48ebb08d with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x55ceeb31 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
            call arg1 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
        else:
            if arg2 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - (arg2 * ext_call.return_data[0] / 10000):
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                    if not 0 / ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4096
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4098
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not 0 / ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn((0 / ext_call.return_data[0]), arg1, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4096
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4098
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
            else:
                if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] - (arg2 * ext_call.return_data[0] / 10000) != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0] >= (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    if not (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4096
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4098
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) >> 32
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn(((ext_call.return_data[0] * 10^uint8(ext_call.return_data[0])) - (arg2 * ext_call.return_data[0] / 10000 * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]), arg1, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4096
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4098
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xf7888aec with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        if stor51 + 1 != stor51:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x73c9641d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not ext_call.return_data[0]:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        if not arg1:
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                        else:
                            staticcall address(ext_call.return_data[0]).0x65be454d with:
                                    gas gas_remaining wei
                                   args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] < 0:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    else:
                        if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                            if stor51 + 1 != stor51:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            return 4101
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x55ceeb31 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    emit Withdrawn(ext_call.return_data[0], arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        return 0
}

function sub_572f9225(?) payable {
    require calldata.size - 4 >= 64
    stor51++
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x45bb7f8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x41976e09 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x57838bd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcefe0f21 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == ext_call.return_data[0]:
        revert with 0, 'collateral token has no value'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x73c9641d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            revert with 0, 'non-zero amount expected'
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            if not sub_d65cb5aa:
                revert with 0, 'SafeMath: division by zero'
            if 1 > 0 / sub_d65cb5aa:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / sub_d65cb5aa) - 1:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'non-zero amount expected'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x57838bd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xc2ba4744 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'minting of the token prohibited'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x45bb7f8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x41976e09 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'token has no value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xf7888aec with:
                        gas gas_remaining wei
                       args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'insufficient collateral value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if not 0 / ext_call.return_data[0]:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    if not arg1:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        staticcall address(ext_call.return_data[0]).0x660eab83 with:
                                gas gas_remaining wei
                               args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'insufficient collateral value'
                else:
                    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                        revert with 0, 'insufficient collateral value'
                if not 0 / ext_call.return_data[0]:
                    if 1 >= 0 / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)]++
                    if 1 > 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (0 / ext_call.return_data[0]) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(0 / ext_call.return_data[0], 1, arg1, msg.sender);
                else:
                    if sub_7c4b7a86 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != sub_7c4b7a86:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 < sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 >= 0 / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)] = (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 > 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (0 / ext_call.return_data[0]) + -(sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(0 / ext_call.return_data[0], (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1, arg1, msg.sender);
            else:
                if -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / (0 / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'non-zero amount expected'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x57838bd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xc2ba4744 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'minting of the token prohibited'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x45bb7f8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x41976e09 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'token has no value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xf7888aec with:
                        gas gas_remaining wei
                       args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'insufficient collateral value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if not -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    if not arg1:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        staticcall address(ext_call.return_data[0]).0x660eab83 with:
                                gas gas_remaining wei
                               args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'insufficient collateral value'
                else:
                    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                        revert with 0, 'insufficient collateral value'
                if not -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    if 1 >= -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)]++
                    if 1 > -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], 1, arg1, msg.sender);
                else:
                    if sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] != sub_7c4b7a86:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 < sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 >= -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)] = (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 > -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) + -(sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1, arg1, msg.sender);
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not sub_d65cb5aa:
                revert with 0, 'SafeMath: division by zero'
            if 1 > 10000 * ext_call.return_data[0] / sub_d65cb5aa:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10000 * ext_call.return_data[0] / sub_d65cb5aa) - 1:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'non-zero amount expected'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x57838bd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xc2ba4744 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'minting of the token prohibited'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x45bb7f8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x41976e09 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'token has no value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xf7888aec with:
                        gas gas_remaining wei
                       args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'insufficient collateral value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if not 0 / ext_call.return_data[0]:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    if not arg1:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        staticcall address(ext_call.return_data[0]).0x660eab83 with:
                                gas gas_remaining wei
                               args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'insufficient collateral value'
                else:
                    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                        revert with 0, 'insufficient collateral value'
                if not 0 / ext_call.return_data[0]:
                    if 1 >= 0 / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)]++
                    if 1 > 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (0 / ext_call.return_data[0]) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(0 / ext_call.return_data[0], 1, arg1, msg.sender);
                else:
                    if sub_7c4b7a86 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != sub_7c4b7a86:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 < sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 >= 0 / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)] = (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 > 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (0 / ext_call.return_data[0]) + -(sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(0 / ext_call.return_data[0], (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1, arg1, msg.sender);
            else:
                if -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / (10000 * ext_call.return_data[0] / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'non-zero amount expected'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x57838bd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xc2ba4744 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'minting of the token prohibited'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x45bb7f8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x41976e09 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'token has no value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xf7888aec with:
                        gas gas_remaining wei
                       args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'insufficient collateral value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if not -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    if not arg1:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        staticcall address(ext_call.return_data[0]).0x660eab83 with:
                                gas gas_remaining wei
                               args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'insufficient collateral value'
                else:
                    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                        revert with 0, 'insufficient collateral value'
                if not -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    if 1 >= -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)]++
                    if 1 > -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (-10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(-10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], 1, arg1, msg.sender);
                else:
                    if sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] != sub_7c4b7a86:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 < sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 >= -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)] = (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 > -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (-10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) + -(sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(-10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (10000 * ext_call.return_data[0] / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1, arg1, msg.sender);
    else:
        if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] < arg2 * ext_call.return_data[0] / 10000:
            revert with 0, 'non-zero amount expected'
        if arg2 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - (arg2 * ext_call.return_data[0] / 10000):
            if not sub_d65cb5aa:
                revert with 0, 'SafeMath: division by zero'
            if 1 > 0 / sub_d65cb5aa:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / sub_d65cb5aa) - 1:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'non-zero amount expected'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x57838bd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xc2ba4744 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'minting of the token prohibited'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x45bb7f8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x41976e09 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'token has no value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xf7888aec with:
                        gas gas_remaining wei
                       args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'insufficient collateral value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if not 0 / ext_call.return_data[0]:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    if not arg1:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        staticcall address(ext_call.return_data[0]).0x660eab83 with:
                                gas gas_remaining wei
                               args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'insufficient collateral value'
                else:
                    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                        revert with 0, 'insufficient collateral value'
                if not 0 / ext_call.return_data[0]:
                    if 1 >= 0 / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)]++
                    if 1 > 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (0 / ext_call.return_data[0]) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(0 / ext_call.return_data[0], 1, arg1, msg.sender);
                else:
                    if sub_7c4b7a86 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != sub_7c4b7a86:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 < sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 >= 0 / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)] = (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 > 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (0 / ext_call.return_data[0]) + -(sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(0 / ext_call.return_data[0], (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1, arg1, msg.sender);
            else:
                if -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / (0 / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'non-zero amount expected'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x57838bd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xc2ba4744 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'minting of the token prohibited'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x45bb7f8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x41976e09 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'token has no value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xf7888aec with:
                        gas gas_remaining wei
                       args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'insufficient collateral value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if not -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    if not arg1:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        staticcall address(ext_call.return_data[0]).0x660eab83 with:
                                gas gas_remaining wei
                               args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'insufficient collateral value'
                else:
                    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                        revert with 0, 'insufficient collateral value'
                if not -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    if 1 >= -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)]++
                    if 1 > -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], 1, arg1, msg.sender);
                else:
                    if sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] != sub_7c4b7a86:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 < sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 >= -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)] = (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 > -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) + -(sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(-10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + (0 / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1, arg1, msg.sender);
        else:
            if (10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / ext_call.return_data[0] - (arg2 * ext_call.return_data[0] / 10000) != 10000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not sub_d65cb5aa:
                revert with 0, 'SafeMath: division by zero'
            if 1 > (10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa) - 1:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / ext_call.return_data[0]:
                    revert with 0, 'non-zero amount expected'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x57838bd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xc2ba4744 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'minting of the token prohibited'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x45bb7f8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x41976e09 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'token has no value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xf7888aec with:
                        gas gas_remaining wei
                       args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'insufficient collateral value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if not 0 / ext_call.return_data[0]:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    if not arg1:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        staticcall address(ext_call.return_data[0]).0x660eab83 with:
                                gas gas_remaining wei
                               args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'insufficient collateral value'
                else:
                    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                        revert with 0, 'insufficient collateral value'
                if not 0 / ext_call.return_data[0]:
                    if 1 >= 0 / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)]++
                    if 1 > 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (0 / ext_call.return_data[0]) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(0 / ext_call.return_data[0], 1, arg1, msg.sender);
                else:
                    if sub_7c4b7a86 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != sub_7c4b7a86:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 < sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 >= 0 / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), 0 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)] = (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1
                    if (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1 > 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (0 / ext_call.return_data[0]) + -(sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(0 / ext_call.return_data[0], (sub_7c4b7a86 * 0 / ext_call.return_data[0] / 10000) + 1, arg1, msg.sender);
            else:
                if -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa) - 1 != 10^uint8(ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    revert with 0, 'non-zero amount expected'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x57838bd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xc2ba4744 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'minting of the token prohibited'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x45bb7f8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x41976e09 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'token has no value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xf7888aec with:
                        gas gas_remaining wei
                       args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'insufficient collateral value'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if not -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    staticcall address(ext_call.return_data[0]).0x912c2673 with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    if not arg1:
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                    else:
                        staticcall address(ext_call.return_data[0]).0x660eab83 with:
                                gas gas_remaining wei
                               args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x73c9641d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'insufficient collateral value'
                else:
                    if sub_d65cb5aa * ext_call.return_data[0] / ext_call.return_data[0] != sub_d65cb5aa:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if ext_call.return_data[0] < sub_d65cb5aa * ext_call.return_data[0] / 10000:
                        revert with 0, 'insufficient collateral value'
                if not -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                    if 1 >= -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)]++
                    if 1 > -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (-10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(-10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], 1, arg1, msg.sender);
                else:
                    if sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] != sub_7c4b7a86:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 < sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 >= -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'amount too low'
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x84d9319e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x48ebb08d with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(addressProvider)
                    staticcall addressProvider.0x3ec357f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x551f8e2a with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1 < sub_fd26fef1[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_fd26fef1[address(arg1)] = (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + sub_fd26fef1[address(arg1)] + 1
                    if (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1 > -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (-10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0]) + -(sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Minted(-10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0], (sub_7c4b7a86 * -10^uint8(ext_call.return_data[0]) + ((10000 * ext_call.return_data[0]) - (10000 * arg2 * ext_call.return_data[0] / 10000) / sub_d65cb5aa * 10^uint8(ext_call.return_data[0])) / ext_call.return_data[0] / 10000) + 1, arg1, msg.sender);
    if stor51 + 1 != stor51:
        revert with 0, 'ReentrancyGuard: reentrant call'
}



}
