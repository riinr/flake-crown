{
  description = ''A pure nim version of C++'s std::bitset'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bitset-main.flake = false;
  inputs.src-bitset-main.owner = "joryschossau";
  inputs.src-bitset-main.ref   = "refs/heads/main";
  inputs.src-bitset-main.repo  = "bitset";
  inputs.src-bitset-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bitset-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bitset-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}