contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 tokenId;
address payloadAddress;

function tokenId() {
    return tokenId
}

function owner() {
    return owner
}

function payload() {
    return payloadAddress
}

function _fallback() payable {
    revert
}

function sub_3f981179(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require owner
    require owner == msg.sender
    stor5 = arg1
}

function sub_85cf515b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require owner
    require owner == msg.sender
    tokenId = arg1
}

function sub_12608edb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require owner
    require owner == msg.sender
    stor4 = address(arg1)
}

function sub_15af500c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require owner
    require owner == msg.sender
    stor2 = address(arg1)
}

function sub_61429b11(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require owner
    require owner == msg.sender
    stor1 = address(arg1)
}

function sub_df51b99b(?) {
    require ext_code.size(stor2)
    call stor2.setApprovalForAll(address arg1, bool arg2) with:
         gas gas_remaining wei
        args owner, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require owner
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_28c9fc31(?) {
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require owner
    require owner == msg.sender
    owner = arg1
    require ext_code.size(stor2)
    call stor2.setApprovalForAll(address arg1, bool arg2) with:
         gas gas_remaining wei
        args owner, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_02139f4e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require owner
    require owner == msg.sender
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getSpecies(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor2)
    staticcall stor2.0x2be6a2a9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function sub_6dee6acf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require owner
    require owner == msg.sender
    stor3 = address(arg1)
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require owner
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_990fa009(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require owner
    require owner == msg.sender
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require owner
    require owner == msg.sender
    require ext_code.size(arg1)
    if arg3:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8738e293(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require owner
    require owner == msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call payloadAddress with:
         gas gas_remaining wei
        args arg1[all]
    if not ext_call.success:
        revert with 0, 'failed'
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'amount failed'
}

function sub_1de13e0f(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require owner
    require owner == msg.sender
    if arg3:
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = arg3
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(this.address), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16 = mem[_15]
            require mem[_15] == mem[_15]
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(arg2)
            mem[mem[64] + 68] = _16
            require ext_code.size(address(arg1))
            call address(arg1).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(arg2), _16
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _16
            continue 
}



}
