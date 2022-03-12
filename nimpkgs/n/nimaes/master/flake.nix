{
  description = ''Advanced Encryption Standard, Rijndael Algorithm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimAES-master.flake = false;
  inputs.src-nimAES-master.owner = "jangko";
  inputs.src-nimAES-master.ref   = "refs/heads/master";
  inputs.src-nimAES-master.repo  = "nimAES";
  inputs.src-nimAES-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimAES-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimAES-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}