contract main {




// =====================  Runtime code  =====================


const sub_16a49186(?) = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
address owner; offset 16
uint256 stor0; offset 8
mapping of uint256 sub_0a72e71b;
uint256 mintingFee;
address sub_bcde4d59Address;
address sub_52952bb1Address;

function sub_0a72e71b(?) {
    require calldata.size - 4 >= 32
    return sub_0a72e71b[arg1]
}

function sub_52952bb1(?) {
    return sub_52952bb1Address
}

function owner() {
    return owner
}

function getMintingFee() {
    return mintingFee
}

function sub_bcde4d59(?) {
    return sub_bcde4d59Address
}

function _fallback() payable {
    revert
}

function initialized() {
    if not sub_bcde4d59Address:
        return bool(sub_bcde4d59Address)
    return bool(sub_52952bb1Address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMintingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintingFee = arg1
    emit 0xff0d47c3: arg1
}

function collectFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Fees send failed'
    emit 0xa44d2934: address(arg1), eth.balance(this.address)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    emit 0x5e67a9c4: arg1
}

function initialize(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        sub_bcde4d59Address = arg1
        sub_52952bb1Address = arg2
        mintingFee = arg3
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            sub_bcde4d59Address = arg1
            sub_52952bb1Address = arg2
            mintingFee = arg3
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            sub_bcde4d59Address = arg1
            sub_52952bb1Address = arg2
            mintingFee = arg3
            uint8(stor0.field_8) = 0
}

function sub_987807ad(?) payable {
    require calldata.size - 4 >= 64
    if not sub_bcde4d59Address:
        revert with 0, 'Not initialized'
    if not sub_52952bb1Address:
        revert with 0, 'Not initialized'
    if msg.value < mintingFee:
        revert with 0, 'Missing fee'
    if sub_0a72e71b[arg1]:
        revert with 0, 'Niftypix Data already set'
    require ext_code.size(sub_52952bb1Address)
    staticcall sub_52952bb1Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Does not own this token'
    require ext_code.size(sub_bcde4d59Address)
    staticcall sub_bcde4d59Address.tokenType(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < 3
    if ext_call.return_data[0] > 2:
        revert with 'NH{q', 33
    if ext_call.return_data[0] != 2:
        revert with 0, 'Not a Bitgem Canvas NFT'
    sub_0a72e71b[arg1] = arg2
    emit 0x9521b3eb: arg1, arg2
}



}
