contract main {




// =====================  Runtime code  =====================


address owner;
address nftAddress;
uint256 maxMint;

function nft() {
    return nftAddress
}

function maxMint() {
    return maxMint
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setMaxMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    maxMint = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + arg3.length + 97] = 0
    call arg1.mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'Reverted.'
    if not return_data.size:
        return Array(len=arg3.length, data=arg3[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function snipe() {
    require ext_code.size(nftAddress)
    staticcall nftAddress.saleOpen() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'S'
    require ext_code.size(nftAddress)
    staticcall nftAddress.price(uint256 arg1) with:
            gas gas_remaining wei
           args 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if eth.balance(this.address) / ext_call.return_data[0] > 5:
        idx = 0
        while idx < 5:
            mem[(2 * ceil32(return_data.size)) + 96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = owner
            mem[(2 * ceil32(return_data.size)) + 132] = 5
            require ext_code.size(nftAddress)
            call nftAddress.0x40c10f19 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args owner, 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        emit Minted(25);
    else:
        idx = 0
        while idx < eth.balance(this.address) / ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = owner
            mem[(2 * ceil32(return_data.size)) + 132] = 5
            require ext_code.size(nftAddress)
            call nftAddress.0x40c10f19 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args owner, 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if eth.balance(this.address) / ext_call.return_data[0] == 5:
            if eth.balance(this.address) / ext_call.return_data[0] and 5 > -1 / eth.balance(this.address) / ext_call.return_data[0]:
                revert with 'NH{q', 17
            emit Minted((5 * eth.balance(this.address) / ext_call.return_data[0]));
        else:
            require ext_code.size(nftAddress)
            staticcall nftAddress.price(uint256 arg1) with:
                    gas gas_remaining wei
                   args 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            idx = 0
            while idx < eth.balance(this.address) / ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 100] = owner
                mem[(4 * ceil32(return_data.size)) + 132] = 1
                require ext_code.size(nftAddress)
                call nftAddress.0x40c10f19 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args owner, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if eth.balance(this.address) / ext_call.return_data[0] and 5 > -1 / eth.balance(this.address) / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 5 * eth.balance(this.address) / ext_call.return_data[0] > -(eth.balance(this.address) / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            emit Minted((6 * eth.balance(this.address) / ext_call.return_data[0]));
}



}
