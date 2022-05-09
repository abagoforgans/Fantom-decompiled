contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    if not arg1:
        revert with 0, 'new admin is the zero address'
    if ext_code.size(arg1):
        revert with 0, 'new admin is a contract'
    stor0[stor1] = 0
    adminAddress = arg1
    stor0[arg1] = 1
    return 1
}

function sub_c0ce282a(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == adminAddress
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if ext_code.size(mem[(32 * idx) + 128]):
            revert with 0, 'callable cannot be a contract'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function sub_935f0551(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == adminAddress
    idx = 0
    while idx < ('cd', 36).length:
        if eth.balance(cd[((32 * idx) + cd[36] + 36)]) < cd[4]:
            require idx < ('cd', 36).length
            call address(cd[((32 * idx) + cd[36] + 36)]) with:
               value cd[4] - eth.balance(cd[((32 * idx) + cd[36] + 36)]) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with 0, 'send failed'
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x6e576974686472617720616d6f756e74206d75737420626520736d616c6c6572206f7220657175616c20746f2074686520617661696c61626c6520746f6b656e20616d6f756e74,
                    mem[235 len 25]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    require ext_call.success
    return 1
}

function withdrawEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    if not arg2:
        revert with 0, 'recipient cannot be 0 address'
    if not stor0[address(arg2)]:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0xfe726563697069656e74206d75737420626520612063616c6c61626c652061646472657373206f72207468652061646d69,
                        mem[213 len 15]
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x2e576974686472617720616d6f756e74206d75737420626520736d616c6c6572206f7220657175616c20746f2074686520617661696c61626c652065746820616d6f756e74,
                    mem[233 len 27]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}



}
