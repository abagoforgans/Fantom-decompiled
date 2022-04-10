contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function test() {
    require stor0 == 0xf2cee375fa42b42143804025fc449deafd50cc031ca257e0b194a650a912090f
    require sha3(sha3('Mail(Person from,Person to,strin', 'g contents)Person(string name,ad', 'dress wallet)'), sha3(sha3('Person(string name,address walle', 't)'), sha3(Mask(24, 232, 'Person(string name,address walle') >> 232), 0xcd2a3d9f938e13cd947ec05abc7fe734df8dd826), sha3(sha3('Person(string name,address walle', 't)'), sha3(Mask(24, 232, 'Person(string name,address walle') >> 232), 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb), 0, sha3(Mask(88, 168, sha3('Person(string name,address walle', 't)')) >> 168)) == 0xc52c0ee5d84264471806290a3f2c4cecfc5490626bf912d01f240d7a274b371e
    signer = erecover(sha3(0, stor0, Mask(240, 16, sha3(sha3('Mail(Person from,Person to,strin', 'g contents)Person(string name,ad', 'dress wallet)'), sha3(sha3('Person(string name,address walle', 't)'), sha3(Mask(24, 232, 'Person(string name,address walle') >> 232), 0xcd2a3d9f938e13cd947ec05abc7fe734df8dd826), sha3(sha3('Person(string name,address walle', 't)'), sha3(Mask(24, 232, 'Person(string name,address walle') >> 232), 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb), 0, sha3(Mask(88, 168, sha3('Person(string name,address walle', 't)')) >> 168))) >> 16, mem[1794 len 2]), 28, 0x4355c47d63924e8a72e509b65029052eb6c299d53a04e167c5775fd466751c9d, 0x7299936d304c153f6443dfa05f40ff007d72911b6f72307f996231605b91562) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == 0xcd2a3d9f938e13cd947ec05abc7fe734df8dd826
    return 1
}



}
