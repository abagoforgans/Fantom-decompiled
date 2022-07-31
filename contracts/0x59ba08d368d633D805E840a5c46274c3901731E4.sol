contract main {




// =====================  Runtime code  =====================


const CANNOT_TRANSFER_TO_ZERO_ADDRESS = '018002', 0

const NOT_CURRENT_OWNER = '018001', 0


address owner;
address sub_43a1f25dAddress;
mapping of uint8 stor2;
uint32 MAX_BATCH_SIZE;
uint256 sub_b292b124;
address stor5;

function whitelistedAddresses(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_43a1f25d(?) {
    return sub_43a1f25dAddress
}

function owner() {
    return owner
}

function sub_b292b124(?) {
    return sub_b292b124
}

function MAX_BATCH_SIZE() {
    return MAX_BATCH_SIZE
}

function _fallback() payable {
    revert
}

function sub_61cafeae(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '018001', 0
    sub_b292b124 = arg1
}

function sub_6f33659f(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, '018001', 0
    MAX_BATCH_SIZE = uint32(arg1)
}

function whitelistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '018001', 0
    if stor2[address(arg1)]:
        revert with 0, 'ADDRESS_ALREADY_WHITELISTED'
    stor2[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '018001', 0
    if not arg1:
        revert with 0, '018002', 0
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_268626ca(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '018001', 0
    if not address(arg1):
        revert with 0, 'Invalid NFTchat contract address provided'
    sub_43a1f25dAddress = address(arg1)
    stor5 = sub_43a1f25dAddress
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, '018001', 0
    if eth.balance(this.address) and 33 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call 0x61736bd58833cdae807103b3caf4be52462024cc with:
       value 33 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer to A1 failed.'
    call 0x5ac46bb905a03adf7073a896378209c069d924c3 with:
       value 33 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer to A2 failed.'
    call 0xd0557c7bae8ccea7b21b623abd28d67d9decb2b5 with:
       value 33 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer to A3 failed.'
}

function sub_9b004a77(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if not stor2[address(msg.sender)]:
        revert with 0, 'ADDRESS_IS_NOT_WHITELISTED'
    if not sub_43a1f25dAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No NFTchat contract address has been set up'
    if msg.value < sub_b292b124:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficent value transfered for Batch Minting'
    if ('cd', 4).length >= MAX_BATCH_SIZE:
        idx = 0
        while idx < MAX_BATCH_SIZE:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if address(cd[((32 * idx) + cd[4] + 36)]):
                mem[96] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[132] = 64
                mem[164] = ('cd', 36).length
                mem[196 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + 196] = 0
                require ext_code.size(stor5)
                call stor5.mint(address arg1, string arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if address(cd[((32 * idx) + cd[4] + 36)]):
                mem[96] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[132] = 64
                mem[164] = ('cd', 36).length
                mem[196 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + 196] = 0
                require ext_code.size(stor5)
                call stor5.mint(address arg1, string arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
