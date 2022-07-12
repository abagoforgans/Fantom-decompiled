contract main {




// =====================  Runtime code  =====================


address owner;
address brushAddress;
address sub_5ff478c8Address;
uint128 officialNFTDiscount;
uint128 sub_6ada44c7; offset 128
address devAddress;
address sub_e868200eAddress;
uint8 stor6; offset 160
uint128 stor6; offset 160
address wftmAddress;

function officialNFTDiscount() {
    return officialNFTDiscount
}

function brush() {
    return brushAddress
}

function sub_5ff478c8(?) {
    return sub_5ff478c8Address
}

function sub_6ada44c7(?) {
    return sub_6ada44c7
}

function owner() {
    return owner
}

function dev() {
    return devAddress
}

function sub_bb2e256b(?) {
    return bool(uint8(stor6.field_160))
}

function sub_e868200e(?) {
    return sub_e868200eAddress
}

function wftm() {
    return wftmAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    devAddress = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_e868200eAddress = arg1
}

function sub_8575e88f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_5ff478c8Address = address(arg1)
}

function sub_b0b13eca(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    Mask(96, 0, stor6.field_160) = Mask(96, 0, bool(arg1))
}

function sub_fb79041e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint128(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    brushAddress = address(arg1)
    sub_6ada44c7 = uint128(arg2)
}

function sub_b919a8b2(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if uint128(arg1) > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Discount should be a percentage, 0-100'
    officialNFTDiscount = uint128(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_5ff478c8Address)
    staticcall sub_5ff478c8Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return sub_6ada44c7
    if officialNFTDiscount and sub_6ada44c7 > test266151307() / officialNFTDiscount:
        revert with 0, 17
    if sub_6ada44c7 < uint128(uint128(sub_6ada44c7 * officialNFTDiscount) / 100):
        revert with 0, 17
    return uint128(sub_6ada44c7 - uint128(uint128(sub_6ada44c7 * officialNFTDiscount) / 100))
}

function sub_c2717e55(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not uint8(stor6.field_160):
        revert with 0, 'Paying is not enabled'
    require ext_code.size(sub_5ff478c8Address)
    staticcall sub_5ff478c8Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        if sub_6ada44c7:
            if cd[4]:
                require ext_code.size(brushAddress)
                call brushAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, devAddress, sub_6ada44c7
            else:
                if not ('cd', 36).length:
                    revert with 0, 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                if address(('cd', 36)[0]) != wftmAddress:
                    revert with 0, 'First should be wftm'
                if ('cd', 36).length < 1:
                    revert with 0, 17
                if ('cd', 36).length - 1 >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                if address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) != brushAddress:
                    revert with 0, 'End should be brush'
                idx = 0
                s = ceil32(return_data.size) + 292
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xc1e5af693890fea56394c9d78d1b9171ae3b342)
                delegate 0xc1e5af693890fea56394c9d78d1b9171ae3b342.0x9c90e8e with:
                     gas gas_remaining wei
                    args sub_e868200eAddress, officialNFTDiscount, msg.value, msg.sender, Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 36).length])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(brushAddress)
                call brushAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args devAddress, sub_6ada44c7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xdf9a5112: msg.sender, officialNFTDiscount, block.timestamp
    else:
        if officialNFTDiscount and sub_6ada44c7 > test266151307() / officialNFTDiscount:
            revert with 0, 17
        if sub_6ada44c7 < uint128(uint128(sub_6ada44c7 * officialNFTDiscount) / 100):
            revert with 0, 17
        if uint128(sub_6ada44c7 - uint128(uint128(sub_6ada44c7 * officialNFTDiscount) / 100)):
            if cd[4]:
                require ext_code.size(brushAddress)
                call brushAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, devAddress, uint128(sub_6ada44c7 - uint128(uint128(sub_6ada44c7 * officialNFTDiscount) / 100))
            else:
                if not ('cd', 36).length:
                    revert with 0, 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                if address(('cd', 36)[0]) != wftmAddress:
                    revert with 0, 'First should be wftm'
                if ('cd', 36).length < 1:
                    revert with 0, 17
                if ('cd', 36).length - 1 >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
                if address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) != brushAddress:
                    revert with 0, 'End should be brush'
                idx = 0
                s = ceil32(return_data.size) + 292
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xc1e5af693890fea56394c9d78d1b9171ae3b342)
                delegate 0xc1e5af693890fea56394c9d78d1b9171ae3b342.0x9c90e8e with:
                     gas gas_remaining wei
                    args sub_e868200eAddress, sub_6ada44c7 - uint128(uint128(sub_6ada44c7 * officialNFTDiscount) / 100) << 128, msg.value, msg.sender, Array(len=('cd', 36).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 36).length])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(brushAddress)
                call brushAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args devAddress, uint128(sub_6ada44c7 - uint128(uint128(sub_6ada44c7 * officialNFTDiscount) / 100))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xdf9a5112: msg.sender, sub_6ada44c7 - uint128(uint128(sub_6ada44c7 * officialNFTDiscount) / 100) << 128, block.timestamp
}



}
