{
  description = ''Cover Art Archive API wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-coverartarchive-master.flake = false;
  inputs.src-coverartarchive-master.owner = "achesak";
  inputs.src-coverartarchive-master.ref   = "refs/heads/master";
  inputs.src-coverartarchive-master.repo  = "nim-coverartarchive";
  inputs.src-coverartarchive-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-coverartarchive-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-coverartarchive-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}