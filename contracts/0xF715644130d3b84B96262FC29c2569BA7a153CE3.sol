contract main {




// =====================  Runtime code  =====================


#
#  - sub_a49a08f0(?)
#
address owner;
uint256 sub_1c22b1b4;
uint256 sub_0693a2a9;
array of uint256 sub_5c85fa9f;
array of uint256 sub_aec222ea;
mapping of struct stor5;

function sub_0693a2a9(?) payable {
    return sub_0693a2a9
}

function sub_1c22b1b4(?) payable {
    return sub_1c22b1b4
}

function sub_5c85fa9f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5c85fa9f.length
    return sub_5c85fa9f[arg1]
}

function owner() payable {
    return owner
}

function sub_aec222ea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_aec222ea.length
    return sub_aec222ea[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_59b97c83(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[arg1].field_416 = 0
    if sub_aec222ea.length == -1:
        require 0 < sub_aec222ea.length
        sub_aec222ea = arg1
    require sub_aec222ea.length < sub_aec222ea.length
    sub_aec222ea[sub_aec222ea.length] = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8d30e7b1(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5c85fa9f.length++
    if sub_5c85fa9f.length != -1:
        sub_5c85fa9f[sub_5c85fa9f.length] = sub_5c85fa9f.length
    else:
        sub_5c85fa9f[sub_5c85fa9f.length] = 0
    stor5[stor3.length].field_256 = arg1
    stor5[stor3.length].field_416 = 1
    stor5[stor3.length][].field_0 = Array(len=arg2.length, data=arg2[all])
}



}
