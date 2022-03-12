{
  description = ''Text editor to speed up testing code snippets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-snip-master.flake = false;
  inputs.src-snip-master.owner = "genotrance";
  inputs.src-snip-master.ref   = "refs/heads/master";
  inputs.src-snip-master.repo  = "snip";
  inputs.src-snip-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-snip-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-snip-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}