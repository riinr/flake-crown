{
  description = ''Gravatar API wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gravatar-master.flake = false;
  inputs.src-gravatar-master.owner = "achesak";
  inputs.src-gravatar-master.ref   = "refs/heads/master";
  inputs.src-gravatar-master.repo  = "nim-gravatar";
  inputs.src-gravatar-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gravatar-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gravatar-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}