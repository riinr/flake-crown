{
  description = ''Create ICS files for email invites, eg. invite.ics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimics-main.flake = false;
  inputs.src-nimics-main.owner = "ThomasTJdev";
  inputs.src-nimics-main.ref   = "main";
  inputs.src-nimics-main.repo  = "nimics";
  inputs.src-nimics-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimics-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimics-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}