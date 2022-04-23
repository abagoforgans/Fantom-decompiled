contract main {




// =====================  Runtime code  =====================


const name = 'MultiSig Test'

const decimals = 18

const symbol = 'MTest'


uint8 stor0; offset 160
uint128 stor0; offset 160
address tokenAddress;
address stor1;
array of address owners;
uint256 threshold;
mapping of uint8 stor4;
mapping of uint256 sub_1eb515f3;
mapping of uint256 sub_7d70ae89;
mapping of uint256 sub_9979ea89;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;

function owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return owners[arg1]
}

function sub_1dc503b8(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor9[arg1][arg2])
}

function sub_1eb515f3(?) payable {
    require calldata.size - 4 >= 32
    return sub_1eb515f3[arg1]
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_39038fbb(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor8[arg1][arg2])
}

function threshold() payable {
    return threshold
}

function sub_7d70ae89(?) payable {
    require calldata.size - 4 >= 32
    return sub_7d70ae89[arg1]
}

function sub_9979ea89(?) payable {
    require calldata.size - 4 >= 32
    return sub_9979ea89[arg1]
}

function sub_b9f11d75(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor10[arg1][arg2])
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[address(arg1)]:
        return 0
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 != this.address:
        return 0
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4d756c74695369673a20746f6b656e20686173206265656e20696e697469616c697a65,
                    mem[200 len 28]
    if stor1 != msg.sender:
        revert with 0, 'MultiSig: not token setter'
    tokenAddress = arg1
    Mask(96, 0, stor0.field_160) = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x744d756c74695369673a2063616e206f6e6c79207472616e736665722066726f6d207468697320636f6e74726163,
                    mem[210 len 18]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor4[address(msg.sender)]:
        revert with 0, 'MultiSig: not owner'
    if stor9[address(msg.sender)][('map', ('param', 'arg1'), ('param', 'arg2'))]:
        revert with 0, 32, 34, 0x644d756c74695369673a20796f7527766520616c7265616479207369676e65642069, mem[282 len 30]
    sub_7d70ae89[arg1][arg2]++
    stor9[address(msg.sender)][('map', ('param', 'arg1'), ('param', 'arg2'))] = 1
    emit 0xafe50dd1: arg2, msg.sender, arg1
    if sub_7d70ae89[arg1][arg2] >= threshold:
        require ext_code.size(tokenAddress)
        call tokenAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_7d70ae89[arg1][arg2] = 0
        idx = 0
        while idx < owners.length:
            mem[0] = sha3(arg1, arg2)
            mem[32] = sha3(owners[idx], 9)
            stor9[stor2[idx]][('map', ('param', 'arg1'), ('param', 'arg2'))] = 0
            idx = idx + 1
            continue 
    return 1
}

function addOwner(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor4[address(arg1)]:
        revert with 0, 'MultiSig: it's already the owner'
    if not stor4[address(msg.sender)]:
        revert with 0, 'MultiSig: not owner'
    if arg2 < 2:
        revert with 0, 'MultiSig: invalid threshold'
    if arg2 > owners.length + 1:
        revert with 0, 'MultiSig: invalid threshold'
    if stor10[address(msg.sender)][('map', ('param', 'arg1'), ('param', 'arg2'))]:
        revert with 0, 32, 34, 0x644d756c74695369673a20796f7527766520616c7265616479207369676e65642069, mem[282 len 30]
    sub_9979ea89[arg1][arg2]++
    stor10[address(msg.sender)][('map', ('param', 'arg1'), ('param', 'arg2'))] = 1
    emit 0xf1ae1f48: arg2, msg.sender, arg1
    if sub_9979ea89[arg1][arg2] >= threshold:
        owners.length++
        owners[owners.length] = arg1
        stor4[address(arg1)] = 1
        emit 0xc3042a92: arg1
        emit 0x866f0868: threshold, arg2
        threshold = arg2
        sub_9979ea89[arg1][arg2] = 0
        idx = 0
        while idx < owners.length:
            mem[0] = sha3(arg1, arg2)
            mem[32] = sha3(owners[idx], 10)
            stor10[stor2[idx]][('map', ('param', 'arg1'), ('param', 'arg2'))] = 0
            idx = idx + 1
            continue 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor4[address(msg.sender)]:
        revert with 0, 'MultiSig: not owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'MultiSig: insufficient balance'
    if stor8[address(msg.sender)][('map', ('param', 'arg1'), ('param', 'arg2'))]:
        revert with 0, 32, 34, 0x644d756c74695369673a20796f7527766520616c7265616479207369676e65642069, mem[282 len 30]
    sub_1eb515f3[arg1][arg2]++
    stor8[address(msg.sender)][('map', ('param', 'arg1'), ('param', 'arg2'))] = 1
    emit 0x7b1970f3: arg2, msg.sender, arg1
    if sub_1eb515f3[arg1][arg2] >= threshold:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_1eb515f3[arg1][arg2] = 0
        idx = 0
        while idx < owners.length:
            mem[0] = sha3(arg1, arg2)
            mem[32] = sha3(owners[idx], 8)
            stor8[stor2[idx]][('map', ('param', 'arg1'), ('param', 'arg2'))] = 0
            idx = idx + 1
            continue 
    return 1
}



}
