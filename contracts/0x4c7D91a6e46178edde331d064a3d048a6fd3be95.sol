contract main {




// =====================  Runtime code  =====================


const wrapped = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const output = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe

const masterchef = 0x8ac0cd0710ad12d9748e3638cfb65296cf13f916


address owner;

function owner() payable {
    return owner
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

function getHarvest() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x8ac0cd0710ad12d9748e3638cfb65296cf13f916)
    call 0x8ac0cd0710ad12d9748e3638cfb65296cf13f916.0x4641257d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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



}
