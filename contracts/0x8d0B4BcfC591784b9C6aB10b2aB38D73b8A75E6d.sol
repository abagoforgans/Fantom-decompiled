contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint8 stor2;

function _fallback() payable {
    revert
}

function setValidator(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'only owner'
    stor1 = arg1
}

function sub_9263bb23(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg4.length != 65:
        revert with 0, 'invalid signature length'
    mem[ceil32(arg4.length) + 160] = 'PRESALEMONEYFTW'
    mem[ceil32(arg4.length) + 175] = arg1
    mem[ceil32(arg4.length) + 207] = arg2
    mem[ceil32(arg4.length) + 239] = arg3
    mem[ceil32(arg4.length) + 128] = 111
    if stor2[Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32][sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])]:
        revert with 0, 'used token'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != stor1:
        revert with 0, 'unknown sign'
    stor2[Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32][sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])] = 1
}



}
