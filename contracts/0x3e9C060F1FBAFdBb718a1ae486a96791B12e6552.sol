contract main {




// =====================  Runtime code  =====================


#
#  - poolNotifyFixedTarget(address arg1, uint256 arg2)
#
const sub_2d2e3a93(?) = 0x5cc61a78f164885776aa610fb0fe1257df78e59b

const usdc = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


address storeAddress;
array of address uniswapRoutes;
uint128 stor2; offset 160
address targetTokenAddress;
uint256 stor2;
address profitSharingPoolAddress;
address uniswapRouterV2Address;

function targetToken() payable {
    return targetTokenAddress
}

function uniswapRouterV2() payable {
    return uniswapRouterV2Address
}

function store() payable {
    return storeAddress
}

function uniswapRoutes(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 < uint256(uniswapRoutes[arg1][arg2])
    return address(uniswapRoutes[arg1][arg2][arg3])
}

function profitSharingPool() payable {
    return profitSharingPoolAddress
}

function _fallback() payable {
    revert
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'new storage shouldn't be empty'
    storeAddress = arg1
}

function setTokenPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    require ext_code.size(arg1)
    staticcall arg1.0xf7c618c1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2.field_0) = Mask(96, 0, stor2.field_160)
    profitSharingPoolAddress = arg1
    emit TokenPoolSet(ext_call.return_data[12 len 20], address(arg1));
}

function setConversionPath(address arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 132] = msg.sender
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    require 0 < arg3.length
    if arg1 != mem[140 len 20]:
        revert with 0, 
                    32,
                    59,
                    0xfe54686520666972737420746f6b656e206f662074686520556e697377617020726f757465206d757374206265207468652066726f6d20746f6b65,
                    mem[(32 * arg3.length) + 255 len 5]
    require arg3.length - 1 < arg3.length
    if arg2 != mem[(32 * arg3.length - 1) + 140 len 20]:
        revert with 0, 
                    32,
                    56,
                    0x6e546865206c61737420746f6b656e206f662074686520556e697377617020726f757465206d7573742062652074686520746f20746f6b65,
                    mem[(32 * arg3.length) + 252 len 8]
    uint256(uniswapRoutes[address(arg1)][address(arg2)]) = arg3.length
    if not arg3.length:
        idx = 0
        while uint256(uniswapRoutes[address(arg1)][address(arg2)]) > idx:
            address(uniswapRoutes[address(arg1)][address(arg2)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            address(uniswapRoutes[address(arg1)][address(arg2)][s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while uint256(uniswapRoutes[address(arg1)][address(arg2)]) > idx:
            address(uniswapRoutes[address(arg1)][address(arg2)][idx]) = 0
            idx = idx + 1
            continue 
}



}
