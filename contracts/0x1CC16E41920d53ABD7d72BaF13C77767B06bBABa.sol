contract main {




// =====================  Runtime code  =====================


const name = 'MutiSigAQU'

const decimals = 18

const symbol = 'MAQU'


uint8 stor0; offset 160
address tokenAddress;
uint256 threshold;
array of address owners;
mapping of uint8 stor3;
mapping of uint256 sub_1eb515f3;
mapping of uint256 sub_9979ea89;

function owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return owners[arg1]
}

function sub_1eb515f3(?) payable {
    require calldata.size - 4 >= 32
    return sub_1eb515f3[arg1]
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function threshold() payable {
    return threshold
}

function sub_9979ea89(?) payable {
    require calldata.size - 4 >= 32
    return sub_9979ea89[arg1]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    return 0
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
    if not stor3[address(arg1)]:
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

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4d756c74695369673a20746f6b656e20686173206265656e20696e697469616c697a65,
                    mem[200 len 28]
    if not stor3[msg.sender]:
        revert with 0, 'MultiSig: not owner'
    tokenAddress = arg1
    stor0 = 1
}

function addOwner(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3[msg.sender]:
        revert with 0, 'MultiSig: not owner'
    sub_9979ea89[arg1][arg2]++
    emit 0xf1ae1f48: arg2, msg.sender, arg1
    if sub_9979ea89[arg1][arg2] >= threshold:
        owners.length++
        owners[owners.length] = arg1
        stor3[address(arg1)] = 1
        emit 0xc3042a92: arg1
        emit 0x866f0868: threshold, arg2
        threshold = arg2
        sub_9979ea89[arg1][arg2] = 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor3[msg.sender]:
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
    sub_1eb515f3[arg1][arg2]++
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
        return 0
    else:
        return 0
}



}
