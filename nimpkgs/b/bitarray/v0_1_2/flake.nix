{
  description = ''Efficient in-memory or mmap-backed bitarray implementation in Nimrod – note uses patched memfiles module (provided in /private) as of May 12, 2014 '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bitarray-v0_1_2.flake = false;
  inputs.src-bitarray-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-bitarray-v0_1_2.owner = "onecodex";
  inputs.src-bitarray-v0_1_2.repo  = "nim-bitarray";
  inputs.src-bitarray-v0_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bitarray-v0_1_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-bitarray-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}