contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const getBalance = eth.balance(this.address)


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address stor6;
uint256 stor7;
mapping of uint8 stor8;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
address developerAddress;
address owner;
uint256 totalSupply;
uint256 sub_e68b7961;
uint256 sub_d95ae162;
uint256 sub_78c5939b;
uint256 sub_049157bb;
array of struct stor21;
uint8 sub_2ecd28ab;

function sub_049157bb(?) {
    return sub_049157bb
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_2ecd28ab(?) {
    return bool(sub_2ecd28ab)
}

function totalShares() {
    return totalShares
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_78c5939b(?) {
    return sub_78c5939b
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with 0, 50
    return payee[arg1]
}

function owner() {
    return owner
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function developer() {
    return developerAddress
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function sub_d95ae162(?) {
    return sub_d95ae162
}

function totalReleased() {
    return totalReleased
}

function sub_e68b7961(?) {
    return sub_e68b7961
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    emit PaymentReceived(msg.sender, msg.value);
}

function sub_5c17e370(?) {
    if sub_049157bb < sub_e68b7961:
        revert with 0, 17
    return (sub_049157bb - sub_e68b7961)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function enableMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2ecd28ab = 1
    emit 0x1ab1d89b: bool(sub_2ecd28ab), 1
}

function disableMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2ecd28ab = 0
    emit 0x1ab1d89b: bool(sub_2ecd28ab), 0
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and stor7 > -1 / arg2:
        revert with 0, 17
    return stor6, arg2 * stor7 / 100
}

function renounceDeveloper() {
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    developerAddress = 0
    emit 0x2cfca82a: developerAddress, 0
}

function setRoyaltyInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
    stor7 = arg2
    emit 0x37b26188: address(arg1), arg2
}

function sub_4a886ad2(?) {
    require calldata.size - 4 >= 32
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    sub_78c5939b = arg1
    emit 0x8d9cfb0d: sub_78c5939b, arg1
}

function sub_b1362ba1(?) {
    require calldata.size - 4 >= 32
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    sub_049157bb = arg1
    emit 0xf4bc3d37: sub_049157bb, arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setMintFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    sub_d95ae162 = 10^18 * arg1
    emit 0xae0eb5cc: sub_d95ae162, 10^18 * arg1
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

function sweepEthToAddress(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferDeveloper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: new developer is the zero address'
    developerAddress = arg1
    emit 0x2cfca82a: developerAddress, arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return bool(stor8[Mask(32, 224, arg1)])
}

function addPayee(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if developerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Developer: caller is not the developer'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is the zero address'
    if arg2 <= 0:
        revert with 0, 'PaymentSplitter: shares are 0'
    if shares[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account already has shares'
    payee.length++
    payee[payee.length] = arg1
    shares[address(arg1)] = arg2
    if totalShares > !arg2:
        revert with 0, 17
    totalShares += arg2
    emit PayeeAdded(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function teamMint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_049157bb:
        revert with 0, 'Team minting not enabled'
    if totalSupply >= sub_78c5939b:
        revert with 0, 'Can not mint that many'
    if sub_e68b7961 >= sub_049157bb:
        revert with 0, 'Can not team mint anymore'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor16]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor16] = arg1
    emit Transfer(0, arg1, totalSupply);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, totalSupply, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    totalSupply++
    sub_e68b7961++
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function claim() {
    if not shares[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: msg.sender has no shares'
    if eth.balance(this.address) > !totalReleased:
        revert with 0, 17
    if eth.balance(this.address) + totalReleased and shares[msg.sender] > -1 / eth.balance(this.address) + totalReleased:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (eth.balance(this.address) * shares[msg.sender]) + (totalReleased * shares[msg.sender]) / totalShares < released[msg.sender]:
        revert with 0, 17
    if not ((eth.balance(this.address) * shares[msg.sender]) + (totalReleased * shares[msg.sender]) / totalShares) - released[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: msg.sender is not due payment'
    if released[msg.sender] > !(((eth.balance(this.address) * shares[msg.sender]) + (totalReleased * shares[msg.sender]) / totalShares) - released[msg.sender]):
        revert with 0, 17
    released[msg.sender] = (eth.balance(this.address) * shares[msg.sender]) + (totalReleased * shares[msg.sender]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[msg.sender]) + (totalReleased * shares[msg.sender]) / totalShares) - released[msg.sender]):
        revert with 0, 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[msg.sender]) + (totalReleased * shares[msg.sender]) / totalShares) - released[msg.sender]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[msg.sender]) + (totalReleased * shares[msg.sender]) / totalShares) - released[msg.sender]:
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value ((eth.balance(this.address) * shares[msg.sender]) + (totalReleased * shares[msg.sender]) / totalShares) - released[msg.sender] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(msg.sender, ((eth.balance(this.address) * shares[msg.sender]) + (totalReleased * shares[msg.sender]) / totalShares) - released[msg.sender]);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function publicMint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not sub_2ecd28ab:
        revert with 0, 'Minter not active'
    if sub_d95ae162 and arg1 > -1 / sub_d95ae162:
        revert with 0, 17
    if sub_d95ae162 * arg1 != msg.value:
        revert with 0, 'Wrong amount of Native Token'
    if totalSupply > !arg1:
        revert with 0, 17
    if totalSupply + arg1 >= sub_78c5939b:
        revert with 0, 'Can not mint that many'
    idx = 0
    while idx < arg1:
        _47 = mem[64]
        mem[64] = mem[64] + 32
        mem[_47] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor16]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        mem[0] = totalSupply
        mem[32] = 2
        ownerOf[stor16] = msg.sender
        emit Transfer(0, msg.sender, totalSupply);
        if ext_code.size(msg.sender):
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = totalSupply
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 164] = mem[s + _47 + 32]
                s = s + 32
                continue 
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, totalSupply, 128, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if not return_data.size:
                    if not mem[96]:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with memory
                      from 128
                       len mem[96]
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_90] == Mask(32, 224, mem[_90])
            if Mask(32, 224, mem[_90]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        totalSupply++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if developerAddress != msg.sender:
        revert with 0, 'Developer: caller is not the developer'
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor21.length):
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor21.length = 0
                        idx = 0
                        while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                            stor21[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor21.length) == stor21.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor21.length = 0
                        idx = 0
                        while stor21.length.field_1 + 31 / 32 > idx:
                            stor21[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129] = 64
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 193] = uint255(stor21.length) * 0.5
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225 len ceil32(uint255(stor21.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)]
                if ceil32(uint255(stor21.length) * 0.5) > uint255(stor21.length) * 0.5:
                    mem[(uint255(stor21.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 161] = ceil32(uint255(stor21.length) * 0.5) + 96
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                    if not bool(stor21.length):
                        emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                    else:
                        if bool(stor21.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor21.length) * 0.5:
                                mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len (2 * ceil32(uint255(stor21.length) * 0.5)) + 128]
                else:
                    if bool(stor21.length) == stor21.length.field_1 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                    if not bool(stor21.length):
                        emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                    else:
                        if bool(stor21.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor21.length.field_1:
                                mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len ceil32(uint255(stor21.length) * 0.5) + ceil32(stor21.length.field_1) + 128]
            else:
                if 31 >= uint255(stor21.length) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor21.length.field_8
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while stor21.length.field_1 + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 193] = uint255(stor21.length) * 0.5
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225 len ceil32(uint255(stor21.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)]
                    if ceil32(uint255(stor21.length) * 0.5) > uint255(stor21.length) * 0.5:
                        mem[(uint255(stor21.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 161] = ceil32(uint255(stor21.length) * 0.5) + 96
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor21.length) * 0.5:
                                    mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len (2 * ceil32(uint255(stor21.length) * 0.5)) + 128]
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor21.length.field_1:
                                    mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len ceil32(uint255(stor21.length) * 0.5) + ceil32(stor21.length.field_1) + 128]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor21.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(stor21.length) * 0.5) + 97 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while stor21.length.field_1 + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 193] = uint255(stor21.length) * 0.5
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225 len ceil32(uint255(stor21.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)]
                    if ceil32(uint255(stor21.length) * 0.5) > uint255(stor21.length) * 0.5:
                        mem[(uint255(stor21.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 161] = ceil32(uint255(stor21.length) * 0.5) + 96
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor21.length) * 0.5:
                                    mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len (4 * ceil32(uint255(stor21.length) * 0.5)) + 128]
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor21.length.field_1:
                                    mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len ceil32(uint255(stor21.length) * 0.5) + ceil32(stor21.length.field_1) + 128]
        else:
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 0, 34
            if not stor21.length.field_1:
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor21.length = 0
                        idx = 0
                        while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                            stor21[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor21.length) == stor21.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor21.length = 0
                        idx = 0
                        while stor21.length.field_1 + 31 / 32 > idx:
                            stor21[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129] = 64
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 193] = uint255(stor21.length) * 0.5
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225 len ceil32(uint255(stor21.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)]
                if ceil32(uint255(stor21.length) * 0.5) > uint255(stor21.length) * 0.5:
                    mem[(uint255(stor21.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 161] = ceil32(uint255(stor21.length) * 0.5) + 96
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                    if not bool(stor21.length):
                        emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                    else:
                        if bool(stor21.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor21.length) * 0.5:
                                mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len (2 * ceil32(uint255(stor21.length) * 0.5)) + 128]
                else:
                    if bool(stor21.length) == stor21.length.field_1 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                    if not bool(stor21.length):
                        emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                    else:
                        if bool(stor21.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor21.length.field_1:
                                mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len ceil32(uint255(stor21.length) * 0.5) + ceil32(stor21.length.field_1) + 128]
            else:
                if 31 >= stor21.length.field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor21.length.field_8
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while stor21.length.field_1 + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 193] = uint255(stor21.length) * 0.5
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225 len ceil32(uint255(stor21.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)]
                    if ceil32(uint255(stor21.length) * 0.5) > uint255(stor21.length) * 0.5:
                        mem[(uint255(stor21.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 161] = ceil32(uint255(stor21.length) * 0.5) + 96
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor21.length) * 0.5:
                                    mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len (2 * ceil32(uint255(stor21.length) * 0.5)) + 128]
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor21.length.field_1:
                                    mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len ceil32(uint255(stor21.length) * 0.5) + ceil32(stor21.length.field_1) + 128]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor21.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor21.length.field_1 + 97 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while stor21.length.field_1 + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 193] = uint255(stor21.length) * 0.5
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225 len ceil32(uint255(stor21.length) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)]
                    if ceil32(uint255(stor21.length) * 0.5) > uint255(stor21.length) * 0.5:
                        mem[(uint255(stor21.length) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 161] = ceil32(uint255(stor21.length) * 0.5) + 96
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor21.length) * 0.5:
                                    mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len (4 * ceil32(uint255(stor21.length) * 0.5)) + 128]
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=2 * Mask(256, -1, stor21.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor21.length) * 0.5)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(uint255(stor21.length) * 0.5) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(uint255(stor21.length) * 0.5) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor21.length.field_1:
                                    mem[idx + (2 * ceil32(uint255(stor21.length) * 0.5)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor21.length) * 0.5) + 129 len ceil32(uint255(stor21.length) * 0.5) + ceil32(stor21.length.field_1) + 128]
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 0, 34
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor21.length):
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor21.length = 0
                        idx = 0
                        while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                            stor21[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor21.length) == stor21.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor21.length = 0
                        idx = 0
                        while stor21.length.field_1 + 31 / 32 > idx:
                            stor21[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129] = 64
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 193] = stor21.length.field_1
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225 len ceil32(stor21.length.field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)]
                if ceil32(stor21.length.field_1) > stor21.length.field_1:
                    mem[stor21.length.field_1 + ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 161] = ceil32(stor21.length.field_1) + 96
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                    if not bool(stor21.length):
                        emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                    else:
                        if bool(stor21.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor21.length) * 0.5:
                                mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len ceil32(stor21.length.field_1) + ceil32(uint255(stor21.length) * 0.5) + 128]
                else:
                    if bool(stor21.length) == stor21.length.field_1 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                    if not bool(stor21.length):
                        emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                    else:
                        if bool(stor21.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor21.length.field_1:
                                mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len (2 * ceil32(stor21.length.field_1)) + 128]
            else:
                if 31 >= uint255(stor21.length) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor21.length.field_8
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while stor21.length.field_1 + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 193] = stor21.length.field_1
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225 len ceil32(stor21.length.field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)]
                    if ceil32(stor21.length.field_1) > stor21.length.field_1:
                        mem[stor21.length.field_1 + ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 161] = ceil32(stor21.length.field_1) + 96
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor21.length) * 0.5:
                                    mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len ceil32(stor21.length.field_1) + ceil32(uint255(stor21.length) * 0.5) + 128]
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor21.length.field_1:
                                    mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len (2 * ceil32(stor21.length.field_1)) + 128]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor21.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(stor21.length) * 0.5) + 97 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while stor21.length.field_1 + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 193] = stor21.length.field_1
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225 len ceil32(stor21.length.field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)]
                    if ceil32(stor21.length.field_1) > stor21.length.field_1:
                        mem[stor21.length.field_1 + ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 161] = ceil32(stor21.length.field_1) + 96
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor21.length) * 0.5:
                                    mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len ceil32(stor21.length.field_1) + ceil32(uint255(stor21.length) * 0.5) + 128]
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor21.length.field_1:
                                    mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len (4 * ceil32(stor21.length.field_1)) + 128]
        else:
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 0, 34
            if not stor21.length.field_1:
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor21.length = 0
                        idx = 0
                        while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                            stor21[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor21.length) == stor21.length.field_1 < 32:
                        revert with 0, 34
                    if arg1.length:
                        stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                    else:
                        stor21.length = 0
                        idx = 0
                        while stor21.length.field_1 + 31 / 32 > idx:
                            stor21[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129] = 64
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 193] = stor21.length.field_1
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225 len ceil32(stor21.length.field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)]
                if ceil32(stor21.length.field_1) > stor21.length.field_1:
                    mem[stor21.length.field_1 + ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 161] = ceil32(stor21.length.field_1) + 96
                if bool(stor21.length):
                    if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                    if not bool(stor21.length):
                        emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                    else:
                        if bool(stor21.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor21.length) * 0.5:
                                mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len ceil32(stor21.length.field_1) + ceil32(uint255(stor21.length) * 0.5) + 128]
                else:
                    if bool(stor21.length) == stor21.length.field_1 < 32:
                        revert with 0, 34
                    mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                    if not bool(stor21.length):
                        emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                    else:
                        if bool(stor21.length) != 1:
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor21.length.field_1:
                                mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len (2 * ceil32(stor21.length.field_1)) + 128]
            else:
                if 31 >= stor21.length.field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor21.length.field_8
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while stor21.length.field_1 + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 193] = stor21.length.field_1
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225 len ceil32(stor21.length.field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)]
                    if ceil32(stor21.length.field_1) > stor21.length.field_1:
                        mem[stor21.length.field_1 + ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 161] = ceil32(stor21.length.field_1) + 96
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor21.length) * 0.5:
                                    mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len ceil32(stor21.length.field_1) + ceil32(uint255(stor21.length) * 0.5) + 128]
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor21.length.field_1:
                                    mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len (2 * ceil32(stor21.length.field_1)) + 128]
                else:
                    mem[ceil32(ceil32(arg1.length)) + 129] = uint256(stor21.field_0)
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor21.length.field_1 + 97 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while (uint255(stor21.length) * 0.5) + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        if arg1.length:
                            stor21[].field_0 = Array(len=arg1.length, data=arg1[all])
                        else:
                            stor21.length = 0
                            idx = 0
                            while stor21.length.field_1 + 31 / 32 > idx:
                                stor21[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129] = 64
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 193] = stor21.length.field_1
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225 len ceil32(stor21.length.field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)]
                    if ceil32(stor21.length.field_1) > stor21.length.field_1:
                        mem[stor21.length.field_1 + ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 225] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 161] = ceil32(stor21.length.field_1) + 96
                    if bool(stor21.length):
                        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = uint255(stor21.length) * 0.5
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], 2 * Mask(256, -1, stor21.length), Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor21.length) * 0.5:
                                    mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len ceil32(stor21.length.field_1) + ceil32(uint255(stor21.length) * 0.5) + 128]
                    else:
                        if bool(stor21.length) == stor21.length.field_1 < 32:
                            revert with 0, 34
                        mem[(2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 225] = stor21.length.field_1
                        if not bool(stor21.length):
                            emit 0xd2877107: Array(len=stor21.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor21.length.field_1)], stor21.length % 128, Mask(248, 8, stor21.length)), ceil32(stor21.length.field_1) + 96
                        else:
                            if bool(stor21.length) != 1:
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len -ceil32(ceil32(arg1.length)) + -ceil32(stor21.length.field_1) - 129]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor21.length.field_1:
                                    mem[idx + (2 * ceil32(stor21.length.field_1)) + ceil32(ceil32(arg1.length)) + 257] = stor21[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                emit 0xd2877107: mem[ceil32(ceil32(arg1.length)) + ceil32(stor21.length.field_1) + 129 len (4 * ceil32(stor21.length.field_1)) + 128]
}



}
