{
  description = ''encode/decode variants to/from uint64'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-variantkey-master.flake = false;
  inputs.src-variantkey-master.owner = "brentp";
  inputs.src-variantkey-master.ref   = "refs/heads/master";
  inputs.src-variantkey-master.repo  = "variantkey-nim";
  inputs.src-variantkey-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-variantkey-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-variantkey-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}