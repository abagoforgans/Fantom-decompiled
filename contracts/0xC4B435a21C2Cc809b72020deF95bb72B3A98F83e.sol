contract main {




// =====================  Runtime code  =====================


#
#  - sub_afc2298f(?)
#
const name = 'Invisibility Cloak'

const symbol = 'Invisibility Cloak'


mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor3;
address owner;
address sub_b4f6f509Address;
array of struct sub_d9fa2cb0;
mapping of uint256 sub_756aacf8;
array of struct sub_583eab45;
mapping of uint8 stor9;
uint256 next_summoner;

function next_summoner() {
    return next_summoner
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function sub_583eab45(?) {
    return sub_583eab45[arg1][0 len sub_583eab45[arg1].length].field_0
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return balanceOf[address(arg1)]
}

function sub_756aacf8(?) {
    require calldata.size - 4 >= 32
    return sub_756aacf8[arg1]
}

function claimStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function owner() {
    return owner
}

function sub_b4f6f509(?) {
    return sub_b4f6f509Address
}

function sub_d9fa2cb0(?) {
    return sub_d9fa2cb0[arg1][0 len sub_d9fa2cb0[arg1].length].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_029e3495(?) {
    require calldata.size - 4 >= 32
    if arg1 == 1:
        return 10
    if arg1 == 2:
        return 20
    if arg1 == 3:
        return 30
    if arg1 != 4:
        return 0
    return 40
}

function sub_2f04b933(?) {
    require calldata.size - 4 >= 32
    if arg1 == 1:
        return 'Elementary'
    if arg1 == 2:
        return 'Perfect'
    if arg1 == 3:
        return 'Grand Master'
    if arg1 != 4:
        return ' '
    return 'King'
}

function getItemRarity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 == 1:
        return 'Ordinary'
    if arg1 == 2:
        return 'Premium'
    if arg1 == 3:
        return 'Rare'
    if arg1 != 4:
        return ' '
    return 'Epic'
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e50373f9(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                    mem[197 len 31]
    if ownerOf[arg2] != msg.sender:
        if not stor3[stor0[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[220 len 8]
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg3] != msg.sender:
            if not stor3[stor0[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[213 len 15]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[205 len 23]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function sub_40b8c404(?) {
    require calldata.size - 4 >= 32
    mem[32] = 8
    mem[96] = sub_d9fa2cb0[arg1].length
    mem[128] = sub_d9fa2cb0[arg1].field_0
    idx = 128
    s = 0
    while sub_d9fa2cb0[arg1].length + 96 > idx:
        mem[idx + 32] = sub_d9fa2cb0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_d9fa2cb0[arg1].length) + ceil32(sub_583eab45[arg1].length) + 160
    mem[ceil32(sub_d9fa2cb0[arg1].length) + 128] = sub_583eab45[arg1].length
    mem[0] = sha3(arg1, 8)
    mem[ceil32(sub_d9fa2cb0[arg1].length) + 160] = sub_583eab45[arg1].field_0
    idx = ceil32(sub_d9fa2cb0[arg1].length) + 160
    s = 0
    while ceil32(sub_d9fa2cb0[arg1].length) + sub_583eab45[arg1].length + 128 > idx:
        mem[idx + 32] = sub_583eab45[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_d9fa2cb0[arg1].length) + ceil32(sub_583eab45[arg1].length) + 192] = sub_756aacf8[arg1]
    mem[ceil32(sub_d9fa2cb0[arg1].length) + ceil32(sub_583eab45[arg1].length) + 160] = 96
    mem[ceil32(sub_d9fa2cb0[arg1].length) + ceil32(sub_583eab45[arg1].length) + 256] = sub_d9fa2cb0[arg1].length
    mem[ceil32(sub_d9fa2cb0[arg1].length) + ceil32(sub_583eab45[arg1].length) + 288 len ceil32(sub_d9fa2cb0[arg1].length)] = mem[128 len ceil32(sub_d9fa2cb0[arg1].length)]
    mem[ceil32(sub_d9fa2cb0[arg1].length) + ceil32(sub_583eab45[arg1].length) + 224] = sub_d9fa2cb0[arg1].length + 128
    mem[sub_d9fa2cb0[arg1].length + ceil32(sub_d9fa2cb0[arg1].length) + ceil32(sub_583eab45[arg1].length) + 288] = sub_583eab45[arg1].length
    mem[sub_d9fa2cb0[arg1].length + ceil32(sub_d9fa2cb0[arg1].length) + ceil32(sub_583eab45[arg1].length) + 320 len ceil32(sub_583eab45[arg1].length)] = mem[ceil32(sub_d9fa2cb0[arg1].length) + 160 len ceil32(sub_583eab45[arg1].length)]
    if not sub_583eab45[arg1].length % 32:
        return Array(len=sub_d9fa2cb0[arg1].length, data=mem[128 len ceil32(sub_d9fa2cb0[arg1].length)], mem[(2 * ceil32(sub_d9fa2cb0[arg1].length)) + ceil32(sub_583eab45[arg1].length) + 288 len sub_583eab45[arg1].length + sub_d9fa2cb0[arg1].length + -ceil32(sub_d9fa2cb0[arg1].length) + 32]), 
               sub_756aacf8[arg1],
               sub_d9fa2cb0[arg1].length + 128
    mem[floor32(sub_583eab45[arg1].length) + sub_d9fa2cb0[arg1].length + ceil32(sub_d9fa2cb0[arg1].length) + ceil32(sub_583eab45[arg1].length) + 320] = mem[floor32(sub_583eab45[arg1].length) + sub_d9fa2cb0[arg1].length + ceil32(sub_d9fa2cb0[arg1].length) + ceil32(sub_583eab45[arg1].length) + -sub_583eab45[arg1].length % 32 + 352 len sub_583eab45[arg1].length % 32]
    return Array(len=sub_d9fa2cb0[arg1].length, data=mem[128 len ceil32(sub_d9fa2cb0[arg1].length)], mem[(2 * ceil32(sub_d9fa2cb0[arg1].length)) + ceil32(sub_583eab45[arg1].length) + 288 len floor32(sub_583eab45[arg1].length) + sub_d9fa2cb0[arg1].length + -ceil32(sub_d9fa2cb0[arg1].length) + 64]), 
           sub_756aacf8[arg1],
           sub_d9fa2cb0[arg1].length + 128
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 32, 44, 0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
        if approved[arg3] != msg.sender:
            if not stor3[stor0[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        mem[228] = 128
        mem[260] = 0
        mem[292 len 0] = None
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 32, 50, 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, 0
            if not return_data.size:
                revert with 0, 
                            32,
                            50,
                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 247 len 14]
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 50, 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] != msg.sender:
            if not stor3[stor0[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 
                    32,
                    41,
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(arg4.length) + 237 len 23]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 232 len 28]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 228] = 128
        mem[ceil32(arg4.length) + 260] = arg4.length
        mem[ceil32(arg4.length) + 292 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 32, 50, 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, 0
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 
                            32,
                            50,
                            0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 247 len 14]
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 50, 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, 0
}



}
