{
  description = ''A compact dictionary implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-compactdict-master.flake = false;
  inputs.src-compactdict-master.owner = "LemonBoy";
  inputs.src-compactdict-master.ref   = "refs/heads/master";
  inputs.src-compactdict-master.repo  = "compactdict";
  inputs.src-compactdict-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-compactdict-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-compactdict-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}