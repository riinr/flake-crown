{
  description = ''A simple GUI for choosenim.'';
  inputs.src-choosenimgui-master.flake = false;
  inputs.src-choosenimgui-master.type = "github";
  inputs.src-choosenimgui-master.owner = "ThomasTJdev";
  inputs.src-choosenimgui-master.repo = "choosenim_gui";
  inputs.src-choosenimgui-master.ref = "refs/heads/master";
  
  
  inputs."webgui".url = "path:../../../w/webgui";
  inputs."webgui".type = "github";
  inputs."webgui".owner = "riinr";
  inputs."webgui".repo = "flake-nimble";
  inputs."webgui".ref = "flake-pinning";
  inputs."webgui".dir = "nimpkgs/w/webgui";

  outputs = { self, nixpkgs, src-choosenimgui-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-choosenimgui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-choosenimgui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}