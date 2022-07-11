contract main {




// =====================  Runtime code  =====================


address owner;
address sub_a57b9038Address;
uint256 sub_b4f18d8d;
uint8 stor3;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 sub_0270ef42;
array of uint256 sub_03e7c62f;

function sub_0270ef42(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0270ef42[arg1]
}

function sub_03e7c62f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_03e7c62f.length
    return sub_03e7c62f[arg1]
}

function sub_0e79fe03(?) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function isActive() {
    return bool(uint8(stor3))
}

function owner() {
    return owner
}

function sub_a57b9038(?) {
    return sub_a57b9038Address
}

function sub_b4f18d8d(?) {
    return sub_b4f18d8d
}

function _fallback() payable {
    revert
}

function fund() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1770a914(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b4f18d8d = arg1
}

function flipActive() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor3) = not uint8(stor3) or Mask(248, 8, uint256(stor3))
}

function sub_efbecb18(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a57b9038Address = address(arg1)
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    sub_03e7c62f.length++
    sub_03e7c62f[sub_03e7c62f.length] = arg3
    stor4[arg3] = 1
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_f02be869(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = sub_03e7c62f.length
    while idx < arg1:
        if 0 >= sub_03e7c62f.length:
            revert with 0, 50
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = owner
        mem[164] = sub_03e7c62f
        require ext_code.size(sub_a57b9038Address)
        call sub_a57b9038Address.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), owner, sub_03e7c62f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s < 1:
            revert with 0, 17
        if s - 1 >= sub_03e7c62f.length:
            revert with 0, 50
        if 0 >= sub_03e7c62f.length:
            revert with 0, 50
        sub_03e7c62f = sub_03e7c62f[s]
        if not sub_03e7c62f.length:
            revert with 0, 49
        mem[0] = 6
        sub_03e7c62f[sub_03e7c62f.length] = 0
        sub_03e7c62f.length--
        if not s:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s - 1
        continue 
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > sub_0270ef42[msg.sender]:
        revert with 0, '01'
    idx = 0
    s = sub_03e7c62f.length
    while idx < arg1:
        if not sub_03e7c62f.length:
            revert with 0, 50
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = sub_03e7c62f
        require ext_code.size(sub_a57b9038Address)
        call sub_a57b9038Address.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, sub_03e7c62f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s < 1:
            revert with 0, 17
        if s - 1 >= sub_03e7c62f.length:
            revert with 0, 50
        if 0 >= sub_03e7c62f.length:
            revert with 0, 50
        sub_03e7c62f = sub_03e7c62f[s]
        if not sub_03e7c62f.length:
            revert with 0, 49
        sub_03e7c62f[sub_03e7c62f.length] = 0
        sub_03e7c62f.length--
        if not s:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 5
        if not sub_0270ef42[msg.sender]:
            revert with 0, 17
        sub_0270ef42[msg.sender]--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s - 1
        continue 
}

function sub_7a34289d(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length >= 10:
        revert with 0, '00'
    if not ('cd', 4).length:
        revert with 0, '01'
    if not uint8(stor3):
        revert with 0, '02'
    if sub_b4f18d8d <= 0:
        revert with 0, '03'
    idx = 0
    while idx < ('cd', 4).length:
        if cd[((32 * idx) + cd[4] + 36)] <= sub_b4f18d8d:
            revert with 0, '04'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 4
        if stor4[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 0, '05'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_a57b9038Address)
        staticcall sub_a57b9038Address.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_45] == mem[_45 + 12 len 20]
        if mem[_45 + 12 len 20] != msg.sender:
            revert with 0, '06'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = ('cd', 4).length
    require ext_code.size(sub_a57b9038Address)
    staticcall sub_a57b9038Address.calculatePrice(uint256 arg1) with:
            gas gas_remaining wei
           args ('cd', 4).length
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _32 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if eth.balance(this.address) < mem[_32]:
        revert with 0, '07'
    require ext_code.size(sub_a57b9038Address)
    call sub_a57b9038Address.mintNeko(uint256 arg1) with:
       value mem[_32] wei
         gas gas_remaining wei
        args ('cd', 4).length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 4
        stor4[cd[((32 * idx) + cd[4] + 36)]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_0270ef42[msg.sender] > !('cd', 4).length:
        revert with 0, 17
    sub_0270ef42[msg.sender] += ('cd', 4).length
}



}
