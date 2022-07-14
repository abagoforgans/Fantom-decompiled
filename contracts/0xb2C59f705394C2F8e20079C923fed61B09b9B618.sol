contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - withdraw(bool arg1, address arg2, address arg3, uint256 arg4)
#
const sub_288936dc(?) = 0x1120e150da9def6fe930f4feded18ef57c0ca7ef

const getBlockNumber = block.number

const expScale = 10^18

const oracle = 0xb24e9420c125242a5ec438bc65e48af1e866ddd

const sub_98e85d5a(?) = 0x83fad9bce24b605fe149b433d62c8011070239b8

const factory = 0xbfd1ce8e6d85e911e80c169293d5c1f5c950fe03

const cUSDC = 0xe45ac34e528907d0a0239ab5db507688070b20bf

const sub_dd90ae7a(?) = 0x5aa53f03197e08c4851cad8c92c7922da5857e5d

const COMPTROLLER = 0x260e596dabe3afc463e75b6cc05d8c46acacfb09


uint32 stor0;
address owner;
uint256 stor0;

function owner() {
    return address(owner)
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == address(owner))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function sub_2901b56a(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(0xbfd1ce8e6d85e911e80c169293d5c1f5c950fe03)
    staticcall 0xbfd1ce8e6d85e911e80c169293d5c1f5c950fe03.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 484] = 128
    mem[(4 * ceil32(return_data.size)) + 516] = 128
    mem[(4 * ceil32(return_data.size)) + 548 len 128] = arg2 << 192, address(arg3), address(ext_call.return_data[0]), arg1
    require ext_code.size(address(ext_call.return_data[0]))
    if address(arg3) == address(ext_call.return_data[0]):
        if address(arg3) == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg1, arg1, address(this.address), 128, 128, arg2 << 192, address(arg3), address(ext_call.return_data[0]), arg1
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg1, 0, address(this.address), 128, 128, arg2 << 192, address(arg3), address(ext_call.return_data[0]), arg1
    else:
        if address(arg3) == ext_call.return_data[12 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg1, address(this.address), 128, 128, arg2 << 192, address(arg3), address(ext_call.return_data[0]), arg1
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, 128, arg2 << 192, address(arg3), address(ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_code.hash(address(arg2)):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 484 len floor32((8 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 484 len floor32((8 * ceil32(return_data.size)) + 99) - 68]
    call address(arg2).mem[(6 * ceil32(return_data.size)) + 484 len 4] with:
         gas gas_remaining wei
        args mem[(6 * ceil32(return_data.size)) + 488 len (9 * ceil32(return_data.size)) + 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, address(arg2) << 64 == bool(0, address(arg2) << 64)
            if not 0, address(arg2) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(6 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 516] == bool(mem[(6 * ceil32(return_data.size)) + 516])
            if not mem[(6 * ceil32(return_data.size)) + 516]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
