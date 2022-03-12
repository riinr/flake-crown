{
  description = ''Homoiconic dynamic language interpreter in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spryvm-master.flake = false;
  inputs.src-spryvm-master.owner = "gokr";
  inputs.src-spryvm-master.ref   = "refs/heads/master";
  inputs.src-spryvm-master.repo  = "spryvm";
  inputs.src-spryvm-master.type  = "github";
  
  inputs."python".dir   = "nimpkgs/p/python";
  inputs."python".owner = "riinr";
  inputs."python".ref   = "flake-pinning";
  inputs."python".repo  = "flake-nimble";
  inputs."python".type  = "github";
  inputs."python".inputs.nixpkgs.follows = "nixpkgs";
  inputs."python".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ui".dir   = "nimpkgs/u/ui";
  inputs."ui".owner = "riinr";
  inputs."ui".ref   = "flake-pinning";
  inputs."ui".repo  = "flake-nimble";
  inputs."ui".type  = "github";
  inputs."ui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."snappy".dir   = "nimpkgs/s/snappy";
  inputs."snappy".owner = "riinr";
  inputs."snappy".ref   = "flake-pinning";
  inputs."snappy".repo  = "flake-nimble";
  inputs."snappy".type  = "github";
  inputs."snappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."snappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/status-im/nim-rocksdb.git".dir   = "nimpkgs/h/https://github.com/status-im/nim-rocksdb.git";
  inputs."https://github.com/status-im/nim-rocksdb.git".owner = "riinr";
  inputs."https://github.com/status-im/nim-rocksdb.git".ref   = "flake-pinning";
  inputs."https://github.com/status-im/nim-rocksdb.git".repo  = "flake-nimble";
  inputs."https://github.com/status-im/nim-rocksdb.git".type  = "github";
  inputs."https://github.com/status-im/nim-rocksdb.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-rocksdb.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spryvm-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-spryvm-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}