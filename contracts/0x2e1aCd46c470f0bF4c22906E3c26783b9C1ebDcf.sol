contract main {




// =====================  Runtime code  =====================


const name = 'oken'

const decimals = 18

const symbol = ''

const chi = 0x4946c0e9f43f4dee607b0ef1fa1c


address owner;
uint128 stor1; offset 128
uint256 stor1;
uint128 stor2; offset 128
uint256 stor2;
uint128 stor3; offset 128
uint256 stor3;
uint256 totalSupply;
address stor6;
mapping of address assimilator;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor11;
array of address derivatives;
array of address numeraires;
array of address reserves;
uint8 stor15;
uint8 stor15; offset 8
uint8 stor15; offset 16
uint256 stor15; offset 8

function frozen() payable {
    return bool(uint8(stor15.field_8))
}

function partitioned() payable {
    return bool(uint8(stor15.field_0))
}

function totalSupply() payable {
    return totalSupply
}

function assimilator(address arg1) payable {
    require calldata.size - 4 >= 32
    return address(assimilator[address(arg1)])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function reserves(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < reserves.length
    return reserves[arg1]
}

function owner() payable {
    return owner
}

function numeraires(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < numeraires.length
    return numeraires[arg1]
}

function partitionTickets(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function derivatives(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < derivatives.length
    return derivatives[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Component/caller-is-not-owner'
    emit OwnershipTransfered(owner, arg1);
    owner = arg1
}

function setFrozen(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Component/caller-is-not-owner'
    emit FrozenSet(arg1);
    Mask(248, 0, stor15.field_8) = Mask(248, 0, arg1)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7f5828d000000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x36372b0700000000000000000000000000000000000000000000000000000000)
}

function partition() payable {
    if owner != msg.sender:
        revert with 0, 'Component/caller-is-not-owner'
    if not uint8(stor15.field_8):
        revert with 0, 'Component/must-be-frozen'
    require ext_code.size(0x1a8a1a7844e07389e4ca8d8fd098ba8fe3680260)
    delegate 0x1a8a1a7844e07389e4ca8d8fd098ba8fe3680260.0x4edb660d with:
         gas gas_remaining wei
        args 1, 11
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor15.field_0) = 1
}

function viewComponent() payable {
    require ext_code.size(0x47de58aff3ee64b19874403348afaa21bb09272)
    delegate 0x47de58aff3ee64b19874403348afaa21bb09272.0x8341bf2e with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return delegate.return_data[0], 
           delegate.return_data[32],
           delegate.return_data[64],
           delegate.return_data[96],
           delegate.return_data[128]
}

function setParams(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Component/caller-is-not-owner'
    require ext_code.size(0x47de58aff3ee64b19874403348afaa21bb09272)
    delegate 0x47de58aff3ee64b19874403348afaa21bb09272.0x3562f9e9 with:
         gas gas_remaining wei
        args 0, 1, arg1, arg2, arg3, arg4, arg5, arg6, arg7
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor15.field_16):
        revert with 0, 'dComponent/re-entered'
    uint8(stor15.field_16) = 0
    require ext_code.size(0x4c8bf9bbfc4c5880d1776ac5d77034ed7a12cc26)
    delegate 0x4c8bf9bbfc4c5880d1776ac5d77034ed7a12cc26.0xce76c03c with:
         gas gas_remaining wei
        args 1, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor15.field_16) = 1
    return bool(delegate.return_data[0])
}

function component() payable {
    return ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor1', 1)))))), 
           ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor1', 1)))))),
           ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor2', 2)))))),
           ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor2', 2)))))),
           ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor3', 3)))))),
           ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor3', 3)))))),
           totalSupply,
           stor6
}

function excludeDerivative(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Component/caller-is-not-owner'
    idx = 0
    while idx < numeraires.length:
        if numeraires[idx] == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x436f6d706f6e656e742f63616e6e6f742d64656c6574652d6e756d657261697200,
                        mem[197 len 31]
        require idx < reserves.length
        mem[0] = 14
        if reserves[idx] == arg1:
            revert with 0, 'Component/cannot-delete-reserve'
        idx = idx + 1
        continue 
    Mask(168, 0, assimilator[address(arg1)]) = 0
}

function viewTargetSwap(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor15.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65436f6d706f6e656e742f66726f7a656e2d6f6e6c792d616c6c6f77696e672d70726f706f7274696f6e616c2d77697468647261,
                    mem[216 len 12]
    require ext_code.size(0xfd2ac652ac14f7300a687299d716e6e8c360bf98)
    delegate 0xfd2ac652ac14f7300a687299d716e6e8c360bf98.0xf54d49e6 with:
         gas gas_remaining wei
        args 0, 1, address(arg1), address(arg2), arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function viewOriginSwap(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor15.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65436f6d706f6e656e742f66726f7a656e2d6f6e6c792d616c6c6f77696e672d70726f706f7274696f6e616c2d77697468647261,
                    mem[216 len 12]
    require ext_code.size(0xfd2ac652ac14f7300a687299d716e6e8c360bf98)
    delegate 0xfd2ac652ac14f7300a687299d716e6e8c360bf98.0x90156183 with:
         gas gas_remaining wei
        args 0, 1, address(arg1), address(arg2), arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor15.field_16):
        revert with 0, 'dComponent/re-entered'
    uint8(stor15.field_16) = 0
    if stor11[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x74436f6d706f6e656e742f6e6f2d7472616e73666572732d6f6e63652d706172746974696f6e65,
                    mem[203 len 25]
    require ext_code.size(0x4c8bf9bbfc4c5880d1776ac5d77034ed7a12cc26)
    delegate 0x4c8bf9bbfc4c5880d1776ac5d77034ed7a12cc26.0xaf4cc91e with:
         gas gas_remaining wei
        args 1, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor15.field_16) = 1
    return bool(delegate.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor15.field_16):
        revert with 0, 'dComponent/re-entered'
    uint8(stor15.field_16) = 0
    if stor11[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x74436f6d706f6e656e742f6e6f2d7472616e73666572732d6f6e63652d706172746974696f6e65,
                    mem[203 len 25]
    require ext_code.size(0x4c8bf9bbfc4c5880d1776ac5d77034ed7a12cc26)
    delegate 0x4c8bf9bbfc4c5880d1776ac5d77034ed7a12cc26.0x6bdffd45 with:
         gas gas_remaining wei
        args 0, 1, address(arg1), address(arg2), arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor15.field_16) = 1
    return bool(delegate.return_data[0])
}

function viewSelectiveDeposit(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if uint8(stor15.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65436f6d706f6e656e742f66726f7a656e2d6f6e6c792d616c6c6f77696e672d70726f706f7274696f6e616c2d77697468647261,
                    mem[216 len 12]
    require ext_code.size(0x3bb6bf6ecbc71f8f78d1eec9c91de4f8fd5c891c)
    delegate 0x3bb6bf6ecbc71f8f78d1eec9c91de4f8fd5c891c.0xb37d98ae with:
         gas gas_remaining wei
        args 0, 1, 96, floor32(arg1.length) + 128, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], arg2.length, call.data[arg2 + 36 len floor32(arg2.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function viewSelectiveWithdraw(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if uint8(stor15.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65436f6d706f6e656e742f66726f7a656e2d6f6e6c792d616c6c6f77696e672d70726f706f7274696f6e616c2d77697468647261,
                    mem[216 len 12]
    require ext_code.size(0x3bb6bf6ecbc71f8f78d1eec9c91de4f8fd5c891c)
    delegate 0x3bb6bf6ecbc71f8f78d1eec9c91de4f8fd5c891c.0xf53157de with:
         gas gas_remaining wei
        args 0, 1, 96, floor32(arg1.length) + 128, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], arg2.length, call.data[arg2 + 36 len floor32(arg2.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function originSwap(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if block.timestamp >= arg5:
        revert with 0, 32, 28, 0xfe436f6d706f6e656e742f74782d646561646c696e652d706173736564000000
    if uint8(stor15.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65436f6d706f6e656e742f66726f7a656e2d6f6e6c792d616c6c6f77696e672d70726f706f7274696f6e616c2d77697468647261,
                    mem[216 len 12]
    if not uint8(stor15.field_16):
        revert with 0, 'dComponent/re-entered'
    uint8(stor15.field_16) = 0
    require ext_code.size(0xfd2ac652ac14f7300a687299d716e6e8c360bf98)
    delegate 0xfd2ac652ac14f7300a687299d716e6e8c360bf98.0x23be1f47 with:
         gas gas_remaining wei
        args 0, 1, address(arg1), address(arg2), arg3, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x436f6d706f6e656e742f62656c6f772d6d696e2d7461726765742d616d6f756e,
                    Mask(248, 0, arg3)
    uint8(stor15.field_16) = 1
    return delegate.return_data[0]
}

function targetSwap(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if block.timestamp >= arg5:
        revert with 0, 32, 28, 0xfe436f6d706f6e656e742f74782d646561646c696e652d706173736564000000
    if uint8(stor15.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65436f6d706f6e656e742f66726f7a656e2d6f6e6c792d616c6c6f77696e672d70726f706f7274696f6e616c2d77697468647261,
                    mem[216 len 12]
    if not uint8(stor15.field_16):
        revert with 0, 'dComponent/re-entered'
    uint8(stor15.field_16) = 0
    require ext_code.size(0xfd2ac652ac14f7300a687299d716e6e8c360bf98)
    delegate 0xfd2ac652ac14f7300a687299d716e6e8c360bf98.0xa8908188 with:
         gas gas_remaining wei
        args 0, 1, address(arg1), address(arg2), arg4, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] >= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x77436f6d706f6e656e742f61626f76652d6d61782d6f726967696e2d616d6f756e,
                    Mask(248, 0, arg4)
    uint8(stor15.field_16) = 1
    return delegate.return_data[0]
}

function liquidity() payable {
    mem[96] = 0xbd075a0000000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    require ext_code.size(0x8d8285dc38dae0807d84a29ac9d1a3af2ba961c4)
    delegate 0x8d8285dc38dae0807d84a29ac9d1a3af2ba961c4.0xbd075a00 with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _4 = mem[96 len 4], 0
    _5 = 1, mem[132 len 28]
    require 1, mem[132 len 28] <= 4294967296
    require 1, mem[132 len 28] + 32 <= return_data.size
    require mem[1, mem[132 len 28] + 96] <= 4294967296 and 1, mem[132 len 28] + (32 * mem[1, mem[132 len 28] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[1, mem[132 len 28] + 96]
    _8 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_5 + 96])] = mem[_5 + 128 len floor32(mem[_5 + 96])]
    mem[(32 * _8) + ceil32(return_data.size) + 128] = _4
    mem[(32 * _8) + ceil32(return_data.size) + 160] = 64
    mem[(32 * _8) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _8) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return _4, 64, mem[(32 * _8) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function viewProportionalWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor15.field_0):
        revert with 0, 'Component/pool-partitioned'
    mem[96] = 0xe5ec0df300000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0xe5481b3b4e78811ee565eb4af4aabf3f23469b33)
    delegate 0xe5481b3b4e78811ee565eb4af4aabf3f23469b33.0xe5ec0df3 with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_6 + 96])] = mem[_6 + 128 len floor32(mem[_6 + 96])]
    mem[(32 * _9) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _9) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _9) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _9) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function viewPartitionClaims(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor15.field_0):
        revert with 0, 'Component/pool-not-partitioned'
    mem[96] = 0x4b2c37bf00000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    mem[132] = 11
    mem[164] = arg1
    require ext_code.size(0x1a8a1a7844e07389e4ca8d8fd098ba8fe3680260)
    delegate 0x1a8a1a7844e07389e4ca8d8fd098ba8fe3680260.0x4b2c37bf with:
         gas gas_remaining wei
        args 1, 11, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_6 + 96])] = mem[_6 + 128 len floor32(mem[_6 + 96])]
    mem[(32 * _9) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _9) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _9) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _9) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function selectiveDeposit(address[] arg1, uint256[] arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if block.timestamp >= arg4:
        revert with 0, 32, 28, 0xfe436f6d706f6e656e742f74782d646561646c696e652d706173736564000000
    if uint8(stor15.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65436f6d706f6e656e742f66726f7a656e2d6f6e6c792d616c6c6f77696e672d70726f706f7274696f6e616c2d77697468647261,
                    mem[216 len 12]
    if not uint8(stor15.field_16):
        revert with 0, 'dComponent/re-entered'
    uint8(stor15.field_16) = 0
    mem[260 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 260] = 0
    mem[floor32(arg1.length) + 260] = arg2.length
    require ext_code.size(0x3bb6bf6ecbc71f8f78d1eec9c91de4f8fd5c891c)
    delegate 0x3bb6bf6ecbc71f8f78d1eec9c91de4f8fd5c891c.0x80feccc with:
         gas gas_remaining wei
        args 0, 1, 128, floor32(arg1.length) + 160, arg3, arg1.length, mem[260 len floor32(arg1.length) + 32], call.data[arg2 + 36 len floor32(arg2.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor15.field_16) = 1
    return delegate.return_data[0]
}

function selectiveWithdraw(address[] arg1, uint256[] arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if block.timestamp >= arg4:
        revert with 0, 32, 28, 0xfe436f6d706f6e656e742f74782d646561646c696e652d706173736564000000
    if uint8(stor15.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65436f6d706f6e656e742f66726f7a656e2d6f6e6c792d616c6c6f77696e672d70726f706f7274696f6e616c2d77697468647261,
                    mem[216 len 12]
    if not uint8(stor15.field_16):
        revert with 0, 'dComponent/re-entered'
    uint8(stor15.field_16) = 0
    mem[260 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 260] = 0
    mem[floor32(arg1.length) + 260] = arg2.length
    require ext_code.size(0x3bb6bf6ecbc71f8f78d1eec9c91de4f8fd5c891c)
    delegate 0x3bb6bf6ecbc71f8f78d1eec9c91de4f8fd5c891c.0x3d422d0c with:
         gas gas_remaining wei
        args 0, 1, 128, floor32(arg1.length) + 160, arg3, arg1.length, mem[260 len floor32(arg1.length) + 32], call.data[arg2 + 36 len floor32(arg2.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor15.field_16) = 1
    return delegate.return_data[0]
}

function originSwapDiscountCHI(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if block.timestamp >= arg5:
        revert with 0, 32, 28, 0xfe436f6d706f6e656e742f74782d646561646c696e652d706173736564000000
    if uint8(stor15.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65436f6d706f6e656e742f66726f7a656e2d6f6e6c792d616c6c6f77696e672d70726f706f7274696f6e616c2d77697468647261,
                    mem[216 len 12]
    if not uint8(stor15.field_16):
        revert with 0, 'dComponent/re-entered'
    uint8(stor15.field_16) = 0
    require ext_code.size(0xfd2ac652ac14f7300a687299d716e6e8c360bf98)
    delegate 0xfd2ac652ac14f7300a687299d716e6e8c360bf98.0x23be1f47 with:
         gas gas_remaining wei
        args 0, 1, address(arg1), address(arg2), arg3, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x436f6d706f6e656e742f62656c6f772d6d696e2d7461726765742d616d6f756e,
                    Mask(248, 0, arg3)
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41130
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor15.field_16) = 1
    return delegate.return_data[0]
}

function proportionalWithdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp >= arg2:
        revert with 0, 32, 28, 0xfe436f6d706f6e656e742f74782d646561646c696e652d706173736564000000
    if uint8(stor15.field_0):
        revert with 0, 'Component/pool-partitioned'
    if not uint8(stor15.field_16):
        revert with 0, 'dComponent/re-entered'
    uint8(stor15.field_16) = 0
    mem[96] = 0x509713c100000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0xe5481b3b4e78811ee565eb4af4aabf3f23469b33)
    delegate 0xe5481b3b4e78811ee565eb4af4aabf3f23469b33.0x509713c1 with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _14 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _17 = mem[_14 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_14 + 96])] = mem[_14 + 128 len floor32(mem[_14 + 96])]
    uint8(stor15.field_16) = 1
    mem[(32 * _17) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _17) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _17) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _17) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function viewProportionalDeposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor15.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65436f6d706f6e656e742f66726f7a656e2d6f6e6c792d616c6c6f77696e672d70726f706f7274696f6e616c2d77697468647261,
                    mem[216 len 12]
    mem[96] = 0x150fb1e400000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0xe5481b3b4e78811ee565eb4af4aabf3f23469b33)
    delegate 0xe5481b3b4e78811ee565eb4af4aabf3f23469b33.0x150fb1e4 with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _6 = mem[96 len 4], 0
    require 1, Mask(224, 32, arg1) >> 32 <= 4294967296
    require 1, Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[1, Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and 1, Mask(224, 32, arg1) >> 32 + (32 * mem[1, Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[1, Mask(224, 32, arg1) >> 32 + 96]
    _10 = mem[1, Mask(224, 32, arg1) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[1, Mask(224, 32, arg1) >> 32 + 96])] = mem[1, Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[1, Mask(224, 32, arg1) >> 32 + 96])]
    mem[(32 * _10) + ceil32(return_data.size) + 128] = _6
    mem[(32 * _10) + ceil32(return_data.size) + 160] = 64
    mem[(32 * _10) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _10) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return _6, 64, mem[(32 * _10) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function proportionalDeposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp >= arg2:
        revert with 0, 32, 28, 0xfe436f6d706f6e656e742f74782d646561646c696e652d706173736564000000
    if uint8(stor15.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x65436f6d706f6e656e742f66726f7a656e2d6f6e6c792d616c6c6f77696e672d70726f706f7274696f6e616c2d77697468647261,
                    mem[216 len 12]
    if not uint8(stor15.field_16):
        revert with 0, 'dComponent/re-entered'
    uint8(stor15.field_16) = 0
    mem[96] = 0xf1bcb8af00000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0xe5481b3b4e78811ee565eb4af4aabf3f23469b33)
    delegate 0xe5481b3b4e78811ee565eb4af4aabf3f23469b33.0xf1bcb8af with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _14 = mem[96 len 4], 0
    require 1, Mask(224, 32, arg1) >> 32 <= 4294967296
    require 1, Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[1, Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and 1, Mask(224, 32, arg1) >> 32 + (32 * mem[1, Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[1, Mask(224, 32, arg1) >> 32 + 96]
    _18 = mem[1, Mask(224, 32, arg1) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[1, Mask(224, 32, arg1) >> 32 + 96])] = mem[1, Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[1, Mask(224, 32, arg1) >> 32 + 96])]
    uint8(stor15.field_16) = 1
    mem[(32 * _18) + ceil32(return_data.size) + 128] = _14
    mem[(32 * _18) + ceil32(return_data.size) + 160] = 64
    mem[(32 * _18) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _18) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return _14, 64, mem[(32 * _18) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function partitionedWithdraw(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not uint8(stor15.field_0):
        revert with 0, 'Component/pool-not-partitioned'
    mem[96] = 0xa8b0ad9600000000000000000000000000000000000000000000000000000000
    mem[100] = 1
    mem[132] = 11
    mem[164] = 128
    mem[228] = arg1.length
    mem[260 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 260] = 0
    mem[196] = floor32(arg1.length) + 160
    mem[floor32(arg1.length) + 260] = arg2.length
    mem[floor32(arg1.length) + 292 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[floor32(arg1.length) + (32 * arg2.length) + 292] = 0
    require ext_code.size(0x1a8a1a7844e07389e4ca8d8fd098ba8fe3680260)
    delegate 0x1a8a1a7844e07389e4ca8d8fd098ba8fe3680260.0xa8b0ad96 with:
         gas gas_remaining wei
        args 0, 1, 11, 128, floor32(arg1.length) + 160, arg1.length, mem[260 len floor32(arg1.length) + 32], call.data[arg2 + 36 len floor32(arg2.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_6 + 96])] = mem[_6 + 128 len floor32(mem[_6 + 96])]
    mem[(32 * _9) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _9) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _9) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _9) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}



}
