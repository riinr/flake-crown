{
  description = ''Bindings for OpenGL ES, the embedded 3D graphics library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gles-master.flake = false;
  inputs.src-gles-master.owner = "nimious";
  inputs.src-gles-master.ref   = "refs/heads/master";
  inputs.src-gles-master.repo  = "gles";
  inputs.src-gles-master.type  = "github";
  
  inputs."nimrod".owner = "nim-nix-pkgs";
  inputs."nimrod".ref   = "master";
  inputs."nimrod".repo  = "nimrod";
  inputs."nimrod".type  = "github";
  inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gles-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gles-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}