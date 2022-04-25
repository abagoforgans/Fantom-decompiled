contract main {




// =====================  Runtime code  =====================


#
#  - poolNotifyFixedTarget(address arg1, uint256 arg2)
#
address storeAddress;
array of address routes;
address targetTokenAddress;
uint256 stor2;
address profitSharingPoolAddress;
address routerAddress;

function targetToken() payable {
    return address(targetTokenAddress)
}

function routes(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 < uint256(routes[arg1][arg2])
    return address(routes[arg1][arg2][arg3])
}

function store() payable {
    return storeAddress
}

function profitSharingPool() payable {
    return profitSharingPoolAddress
}

function router() payable {
    return routerAddress
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
        revert with 0, 'Governable: Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe476f7665726e61626c653a204e65772073746f726167652073686f756c646e277420626520656d7074,
                    mem[206 len 22]
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
        revert with 0, 'Governable: Not governance'
    require ext_code.size(arg1)
    staticcall arg1.rewardToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    profitSharingPoolAddress = arg1
    emit TokenPoolSet(address(targetTokenAddress), arg1);
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
        revert with 0, 'Governable: Not governance'
    require 0 < arg3.length
    if arg1 != mem[140 len 20]:
        revert with 0, 
                    32,
                    71,
                    0x79466565526577617264466f727761726465723a2054686520666972737420746f6b656e206f662074686520726f757465206d757374206265207468652066726f6d20746f6b65,
                    mem[(32 * arg3.length) + 267 len 25]
    require arg3.length - 1 < arg3.length
    if arg2 != mem[(32 * arg3.length - 1) + 140 len 20]:
        revert with 0, 
                    32,
                    68,
                    0x6e466565526577617264466f727761726465723a20546865206c61737420746f6b656e206f662074686520726f757465206d7573742062652074686520746f20746f6b65,
                    mem[(32 * arg3.length) + 264 len 28]
    uint256(routes[address(arg1)][address(arg2)]) = arg3.length
    if not arg3.length:
        idx = 0
        while uint256(routes[address(arg1)][address(arg2)]) > idx:
            address(routes[address(arg1)][address(arg2)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            address(routes[address(arg1)][address(arg2)][s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while uint256(routes[address(arg1)][address(arg2)]) > idx:
            address(routes[address(arg1)][address(arg2)][idx]) = 0
            idx = idx + 1
            continue 
}



}
