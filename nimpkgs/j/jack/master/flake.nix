{
  description = ''Shiny bindings to the JACK Audio Connection Kit.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jack-master.flake = false;
  inputs.src-jack-master.owner = "Skrylar";
  inputs.src-jack-master.ref   = "master";
  inputs.src-jack-master.repo  = "nim-jack";
  inputs.src-jack-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jack-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jack-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}